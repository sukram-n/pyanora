import subprocess
from multiprocessing import Pool

import streamlit as st

from PYANORA_CONSTANTS import APP, EXERCISE
from fluidsynth import midi2wav
from lilypond import create_source, LAYOUT, MIDI
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

    def get_instrument(self, instrument=None):

        if instrument is None:
            instrument = []

        state = st.session_state.pyanora.state

        data, octave = extract_data(state.pitch, state.mode, state.exercise)

        template = templates[state.mode][state.exercise]['notes'].split('~')
        total_duration = 0

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

            instrument.append(source)
            total_duration += self.duration

        instrument[0] = templates[state.mode][state.exercise]['intro'].replace('~', ' ') + instrument[0]
        _key = f'\\key c \\{state.mode.split()[-1]}\n'
        _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
        instrument = _clef + _key + '\\bar "||"'.join(instrument) + '\\bar "|."'

        return instrument, octave, total_duration

    def get_chords(self, chords=None):

        if chords is None:
            chords = []

        state = st.session_state.pyanora.state

        data, octave = extract_data(state.pitch, state.mode, state.exercise)

        template = templates[state.mode][state.exercise]['chords'].split('~')
        total_duration = 0

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

            chords.append(source)
            total_duration += self.duration

        chords[0] = templates[state.mode][state.exercise]['intro'].replace('~', ' ') + chords[0]
        _key = f'\\key c \\{state.mode.split()[-1]}\n'
        _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
        chords = _clef + _key + '\\bar "||"'.join(chords) + '\\bar "|."'

        return chords


def get_metronome():
    return 'c4 c4 c4 c4 '


def get_drone(total_duration):
    state = st.session_state.pyanora.state
    _key = f'\\key c \\{state.mode.split()[-1]}\n'
    _clef = f'\\clef "{defaults["double bass"]["clef"]}" '

    drone = ['r1'] + ["c''1"] + ["c1"] * (total_duration // 48 - 1)
    drone = _clef + _key + '\\bar "||"'.join(drone) + '\\bar "|."'
    return drone


def get_drone_fifths(total_duration):
    state = st.session_state.pyanora.state
    _key = f'\\key c \\{state.mode.split()[-1]}\n'
    _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
    drone_fifths = ['r1'] + ["<c'' g'>1"] + ["<c g'>1"] * (total_duration // 48 - 1)
    drone_fifths = _clef + _key + '\\bar "||"'.join(drone_fifths) + '\\bar "|."'
    return drone_fifths


def __get_sources():
    state = st.session_state.pyanora.state

    lilylist = LilyList()
    sources = {}
    instrument, octave, total_duration = lilylist.get_instrument()

    sources['Instrument'] = instrument

    sources['Metronome'] = get_metronome()
    sources['Drone'] = get_drone(total_duration)
    sources['DroneFifths'] = get_drone_fifths(total_duration)
    sources['Chords'] = lilylist.get_chords()
    return sources, octave


def __sub_process(file_name):
    subprocess.run(
        ['lilypond', '--silent', '-dno-point-and-click', '--svg', f'--output={APP.FOLDER.TMP}',
         f'{APP.FOLDER.TMP}/{file_name}.ly'])


def __prepare_sheet_music() -> None:
    state = st.session_state.pyanora.state
    files_to_process = []
    sources, octave = __get_sources()

    configs = {
        'SheetMusic': {
            'sources': ['Instrument'],
            'type': LAYOUT
        },
        'Audio': {
            'sources': ['Instrument' if state.acc_instrument else '',
                        'Drone' if state.acc_drone else '',
                        'DroneFifths' if state.acc_drone_fifths else '',
                        'Chords' if state.acc_chords else '',
                        'Metronome'],
            'type': MIDI
        }
    }

    for config in configs:
        file_name = f'{state.basename}_{config.lower()}'
        _sources = {}
        for s in configs[config]['sources']:
            if s:
                _sources[s] = sources[s]
        source = create_source(
            _sources,
            pyanora_output_name=file_name,
            pyanora_transpose_to=state.pitch + octave,
            pyanora_tempo=state.tempo,
            pyanora_output_type=configs[config]['type'])
        with open(f'{APP.FOLDER.TMP}/{file_name}.ly', 'w') as file:
            file.write(source)
        files_to_process.append(file_name)

    with Pool(len(files_to_process)) as pool:
        result = pool.map(__sub_process, files_to_process)

    # trim svg with inkscape
    subprocess.run(
        ['inkscape',
         f'{APP.FOLDER.TMP}/{state.basename}_sheetmusic.svg',
         f'--export-filename={APP.FOLDER.ASSETS}/{state.basename}_sheetmusic.svg',
         '--export-area-drawing'])


def __prepare_audio():
    state = st.session_state.pyanora.state
    tuning = midi2wav.pure_tuning(state.lilypond.LILY2MIDI[state.pitch], state.concert_pitch)
    midi2wav.midi2wav(state.basename, tuning=tuning)


def prepare():
    state = st.session_state.pyanora.state
    if not state.changes_confirmed:
        return
    __prepare_sheet_music()
    __prepare_audio()
