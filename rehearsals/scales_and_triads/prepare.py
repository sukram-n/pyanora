import subprocess
from multiprocessing import Pool

import streamlit as st

from PYANORA_CONSTANTS import APP, EXERCISE
from fluidsynth import midi2wav
from .data import extract_data, templates, defaults


class LilyList:

    def __init__(self):
        super().__init__()

        self.part = []
        self._speed = ()
        self._tuplets = ''
        self._n_ticks = 0
        self._note_value = 0
        self._slur_is_open = False
        self.data = None
        self.octave = ''
        self.duration = 0

    @property
    def speed(self):
        return self._speed

    @speed.setter
    def speed(self, __speed):
        # n_ticks is the number of music/midi time ticks
        # 48 time ticks make up one 4/4 bar
        # note_value is one of 1/16 = 'sixteenth', 1/8 = 'eights', etc.
        # in most cases n_o_events=note_values but for triples
        # these values are different, e.g. 12 and 8 will give triplets of eights

        self._speed = __speed
        self._n_ticks, self._note_value = EXERCISE.DURATIONS[__speed]
        self._tuplets = '{'
        if 48 // self.n_ticks != self.note_value:
            self._tuplets = '\\tuplet 3/2 4 {'

    @property
    def n_ticks(self):
        return self._n_ticks

    @property
    def note_value(self):
        return self._note_value

    @property
    def tuplets(self):
        return self._tuplets

    def open_slur(self):
        if st.session_state.pyanora.state.show_slurs:
            if self.duration % 48 == self.n_ticks:
                self.part[-1] += '\\('
                self._slur_is_open = True

    def close_slur(self):
        if st.session_state.pyanora.state.show_slurs:
            if self._slur_is_open:
                self.part[-1] += '\\)'
                self._slur_is_open = False

    def add_event(self, clef, pitch, ff, string):
        if st.session_state.pyanora.state.show_fingerings:
            self.part.append(
                f"{clef} {pitch}{self.note_value}{ff}{string}")
        else:
            self.part.append(
                f"{clef} {pitch}{self.note_value}")

        self.duration += self.n_ticks

    def add_rest(self):
        self.part.append(f"r{self.note_value}")
        self.duration += self.n_ticks

    def add_rests(self):
        n = (48 - (self.duration % 48)) // self.n_ticks
        self.part.extend([f"r{self.note_value}"] * n)
        self.duration += n * self.n_ticks

    def add_tuplet(self):
        self.part[-1] += f' }}\n{self.tuplets}'

    def clean_up(self):

        source = ' '.join(self.part)

        if 'tuplet' in source:
            while 'r8 r8 r8 }' in source:
                source = source.replace('r8 r8 r8 }', '} r4')

        found = True
        source = source[::-1]
        while '  ' in source:
            source = source.replace('  ', ' ')
        nl = ['61r', '8r', '4r', '2r', '1r']
        while found:
            found = False
            for n, r in zip(nl[:-1], nl[1:]):
                if f'{n} {n}' in source:
                    found = True
                    source = source.replace(f'{n} {n}', f'{r}')
                    break
        source = source[::-1]
        source = source.replace('\\(\\)', '')
        return source

    def get_sources_as_list(self, sources_as_list=None):

        if sources_as_list is None:
            sources_as_list = []

        state = st.session_state.pyanora.state

        data, octave = extract_data(state.pitch, state.mode, state.exercise)

        template = templates[state.mode][state.exercise]['notes'].split('~')
        for speed in sorted(state.durations):

            self.speed = speed
            self.duration = 0
            self.part = [self.tuplets]
            for pitch, d in zip(template, data):
                if pitch != 'F':
                    ff = ""
                    for f in d.finger:
                        ff += state.lilypond.TRANSLATIONS[f]
                    string = state.lilypond.TRANSLATIONS[d.string]
                    clef = state.lilypond.TRANSLATIONS[d.clef]

                    if self.duration % 48 == 0:
                        self.close_slur()
                        self.add_tuplet()

                    self.add_event(clef, pitch, ff, string)
                    self.open_slur()

                else:
                    self.close_slur()
                    self.add_rest()
                    self.add_rests()
                    self.add_tuplet()

            self.close_slur()
            self.add_rests()

            self.part.append('}')

            source = self.clean_up()

            sources_as_list.append(source)

        return sources_as_list, octave


def __get_source():
    state = st.session_state.pyanora.state

    lilylist = LilyList()

    instrument, octave = lilylist.get_sources_as_list()

    # instrument, octave = __get_sources_as_list()  # template_as_list)

    instrument[0] = templates[state.mode][state.exercise]['intro'].replace('~', ' ') + instrument[0]
    _key = f'\\key c \\{state.mode.split()[-1]}\n'
    _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
    instrument = _clef + _key + '\\bar "||"'.join(instrument) + '\\bar "|."'

    metronome = 'c4 c4 c4 c4 '

    return instrument, metronome, octave


def __sub_process(file_name):
    subprocess.run(
        ['lilypond', '--silent', '-dno-point-and-click', '--svg', f'--output={APP.FOLDER.TMP}',
         f'{APP.FOLDER.TMP}/{file_name}.ly'])


def __prepare_sheet_music() -> None:
    state = st.session_state.pyanora.state
    files_to_process = []
    instrument, metronome, octave = __get_source()

    for config in [state.lilypond.instrument_metronome, state.lilypond.instrument_only]:
        source, file_name = config.source(
            state.basename,
            instrument_source=instrument,
            metronome_source=metronome,
            transpose_to=state.pitch + octave,
            tempo=state.tempo)
        with open(f'{APP.FOLDER.TMP}/{file_name}.ly', 'w') as file:
            file.write(source)
        files_to_process.append(file_name)

    with Pool(len(files_to_process)) as pool:
        result = pool.map(__sub_process, files_to_process)

    # trim svg with inkscape
    subprocess.run(
        ['inkscape',
         f'{APP.FOLDER.TMP}/{file_name}.svg',
         f'--export-filename={APP.FOLDER.ASSETS}/{file_name}.svg',
         '--export-area-drawing'])


def __prepare_audio():
    state = st.session_state.pyanora.state
    tuning = midi2wav.pure_tuning(state.lilypond.LILY2MIDI[state.pitch], state.concert_pitch)
    midi2wav.midi2wav(state.basename, what='instrument_metronome', tuning=tuning)


def prepare():
    state = st.session_state.pyanora.state
    if not state.changes_confirmed:
        return
    __prepare_sheet_music()
    __prepare_audio()


def __get_template_as_list() -> tuple[list[str], str]:
    state = st.session_state.pyanora.state
    data_set, octave = extract_data(
        state.pitch,
        state.mode,
        state.exercise)
    template = []
    current_clef = ''
    for d in data_set:
        clef = '-'
        if current_clef != d.clef and d.clef != '-':
            clef = current_clef = d.clef

        ff = ""
        string = '-'
        if state.show_fingerings:
            for f in d.finger:
                ff += state.lilypond.TRANSLATIONS[f]
            string = d.string

        text = f" {state.lilypond.TRANSLATIONS[clef]} {d.pitch_template}X{ff}{state.lilypond.TRANSLATIONS[string]}"
        template.append(text)

    return template, octave
