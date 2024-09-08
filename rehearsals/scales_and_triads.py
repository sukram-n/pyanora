import os
from dataclasses import dataclass

import streamlit as st
from streamlit.delta_generator import DeltaGenerator

from PYANORA_CONSTANTS import EXERCISE, MUSIC, APP
from lilypond import TRANSLATIONS
from rehearsals.data.scales_and_trials import extract_data, templates, defaults
from rehearsals.data.scales_and_trials import metadata
from rehearsals.rehearsal import Rehearsal
from rehearsals.rehearsal import _AboutTab


@dataclass
class _AccompanyTab:
    tab: DeltaGenerator

    def __post_init__(self):
        __s = st.session_state.pyanora.state
        state = st.session_state.pyanora.state
        self.tab.checkbox(f'Instrument', key='acc_instrument',
                          value=state.acc_instrument,
                          on_change=state.acc_instrument_changed)

        self.tab.checkbox(f'Drone {state.pitch}', key='acc_drone',
                          value=state.acc_drone,
                          on_change=state.acc_drone_changed)

        self.tab.checkbox(f'Drone {state.pitch} + 5ths', key='acc_drone_fifths',
                          value=state.acc_drone_fifths,
                          on_change=state.acc_drone_fifths_changed)

        self.tab.checkbox(f'Chords', key='acc_chords',
                          value=state.acc_chords,
                          on_change=state.acc_chords_changed)

        self.tab.slider('Concert pitch (Hz)',
                        438.0, 448.0, step=0.5, key='concert_pitch', disabled=False,
                        value=state.concert_pitch,
                        on_change=state.concert_pitch_changed)


@dataclass
class _RehearsalTab:
    tab: DeltaGenerator = None

    @property
    def p_state(self):
        return st.session_state.pyanora.state

    def __post_init__(self):
        self._exercise()
        self._pitch()
        self._mode()
        self._tempo()
        self._note_duration()
        self._slurs_fingering()

    def _exercise(self):

        __s = self.p_state

        self.tab.selectbox('Exercise', EXERCISE.TYPES, key='exercise',
                           index=EXERCISE.TYPES.index(__s.exercise),
                           on_change=__s.exercise_changed)

    def _pitch(self):

        __s = self.p_state
        def _f_pitch(p: str) -> str:
            _p = p + 'n'
            _a = {'f': '$_{\\scriptsize\\flat}$',
                  'n': '${\\scriptsize\\natural}$',
                  's': '$^{\\scriptsize\\sharp}$'}
            return p[0] + _a[_p[1]]

        cols = self.tab.columns([1, 1, 1])
        cols[0].markdown('$\\textsf{\\scriptsize Pitch}$')
        if not __s.changes_confirmed:
            cols[1].markdown(':red[$\\downarrow\\textsf{\\scriptsize click to confirm}\\downarrow$]')

        _prim_sec = ("secondary", "primary")

        k_c = __s.cof_index
        # get circle of fifths for either major or minor
        c_o_f = MUSIC.CIRCLE_OF_FIFTHS[__s.mode.split()[-1]]
        length = len(c_o_f)

        pitches = [c_o_f[(k_c - 1 + length) % length], c_o_f[k_c], c_o_f[(k_c + 1) % length]]

        cols = self.tab.columns([1, 1, 1])
        pitch = pitches[0]
        cols[0].button(f'$\\small\\leftarrow$ {_f_pitch(pitch)}',
                       kwargs={'inc': length - 1, 'length': length},
                       on_click=__s.change_pitch_index, use_container_width=True)
        pitch = pitches[1]
        cols[1].button(f'{_f_pitch(pitch)}',
                       type=_prim_sec[__s.changes_confirmed],
                       kwargs={'pitch': pitch},
                       on_click=__s.key_confirm, use_container_width=True)
        cols[1].markdown(
            """
            <style>
                div[data-testid="column"]:nth-of-type(2)
                {
                    text-align: center;
                } 
            </style>
            """, unsafe_allow_html=True
        )

        pitch = pitches[2]
        cols[2].button(f'{_f_pitch(pitch)} $\\small\\rightarrow$',
                       kwargs={'inc': 1, 'length': length},
                       on_click=__s.change_pitch_index, use_container_width=True)

    def _mode(self):

        __s = self.p_state
        _modes = list(metadata[__s.pitch])

        def _f_mode(s: str):
            return s.split()[0]

        # -----------------------------------------------------------------------------------------------------

        _index = 0
        if __s.mode in _modes:
            _index = _modes.index(__s.mode)
        else:
            maj_min = __s.mode.split()[-1]
            for _m in _modes:
                if maj_min in _m:
                    _index = _modes.index(_m)
                    break
        self.tab.radio('Mode', options=_modes, key='mode', horizontal=True, format_func=_f_mode,
                       index=_index, on_change=__s.mode_changed)

    def _tempo(self):
        __s = self.p_state
        self.tab.slider('Tempo (b.p.m.)', 30, 240, step=5, key='tempo',
                        value=__s.tempo, on_change=__s.tempo_changed)

    def _note_duration(self):

        __s = self.p_state

        def _f_duration(s: str) -> str:
            return s[1:]

        self.tab.multiselect('Duration of Notes', EXERCISE.DURATIONS, format_func=_f_duration,
                             key='durations',
                             default=__s.durations,
                             on_change=__s.durations_changed)

    def _slurs_fingering(self):

        __s = self.p_state

        _cols = self.tab.columns(3)
        _cols[0].checkbox('Slurs', key='show_slurs',
                          value=__s.show_slurs,
                          on_change=__s.show_slurs_changed)
        _cols[1].checkbox('Fingerings', key='show_fingerings',
                          value=__s.show_fingerings,
                          on_change=__s.show_fingerings_changed)


class ScalesAndTriads(Rehearsal):

    def __init__(self):
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
    def pitch_with_octave(self):
        return st.session_state.pyanora.state.pitch + self.octave

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

    def _instrument_source(self, instrument=None):

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
                        ff += TRANSLATIONS[f]
                    string = TRANSLATIONS[d.string]
                    clef = TRANSLATIONS[d.clef]

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

    @staticmethod
    def get_metronome():
        return 'c4 c4 c4 c4 '

    def get_drone(self, total_duration):

        __s = self.p_state

        _key = f'\\key c \\{__s.mode.split()[-1]}\n'
        _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
        drone = ['r1'] + ["c''1"] + ["c1"] * (total_duration // 48 - 1)
        drone = _clef + _key + '\\bar "||"'.join(drone) + '\\bar "|."'
        return drone

    def get_drone_fifths(self, total_duration):

        __s = self.p_state
        _key = f'\\key c \\{__s.mode.split()[-1]}\n'
        _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
        drone_fifths = ['r1'] + ["<c'' g'>1"] + ["<c g'>1"] * (total_duration // 48 - 1)
        drone_fifths = _clef + _key + '\\bar "||"'.join(drone_fifths) + '\\bar "|."'
        return drone_fifths

    def get_chords(self, chords=None):

        __s = self.p_state

        if chords is None:
            chords = []

        _data, octave = extract_data(__s.pitch, __s.mode, __s.exercise)

        template = templates[__s.mode][__s.exercise]['chords'].split('~')
        total_duration = 0

        for speed in sorted(__s.durations):

            self.speed = speed
            self.duration = 0
            self.part = [self.tuplets]
            for pitch, d in zip(template, _data):
                if pitch != 'F':
                    ff = ""
                    for f in d.finger:
                        ff += TRANSLATIONS[f]
                    string = TRANSLATIONS[d.string]
                    clef = TRANSLATIONS[d.clef]

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

        chords[0] = templates[__s.mode][__s.exercise]['intro'].replace('~', ' ') + chords[0]
        _key = f'\\key c \\{__s.mode.split()[-1]}\n'
        _clef = f'\\clef "{defaults["double bass"]["clef"]}" '
        chords = _clef + _key + '\\bar "||"'.join(chords) + '\\bar "|."'

        return chords

    def _create_sources(self):

        if not self.p_state.changes_confirmed:
            return
        sources = {}
        instrument, octave, total_duration = self._instrument_source()

        sources['Instrument'] = f'pyanora_Instrument = {{{instrument}}}'

        sources['Metronome'] = f'pyanora_Metronome = {{{self.get_metronome()}}}'
        sources['Drone'] = f'pyanora_Drone = {{{self.get_drone(total_duration)}}}'
        sources['DroneFifths'] = f'pyanora_DroneFifths = {{{self.get_drone_fifths(total_duration)}}}'
        sources['Chords'] = f'pyanora_Chords = {{{self.get_chords()}}}'
        return sources, octave

    def _sidebar(self):
        with st.sidebar:
            tabs = st.tabs(['Rehearsal', "Accompany", "About", ])
            # fill the tabs:
            _RehearsalTab(tabs[0])
            _AccompanyTab(tabs[1])
            _AboutTab(tabs[2])

