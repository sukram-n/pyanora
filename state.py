import uuid

import streamlit as st

from PYANORA_CONSTANTS import EXERCISE, MUSIC
from lilypond import Lilypond


class State:

    def __init__(self):
        self.basename = uuid.uuid4().hex

        self.lilypond = Lilypond()

        __speeds = list(EXERCISE.DURATIONS)

        self.current_rehearsal_name = ''

        self.acc_instrument = True
        self.acc_drone = False
        self.acc_drone_fifths = False
        self.acc_chords = False
        self.concert_pitch: float = 443.0
        self.exercise: str = "Two Octaves"
        self.changes_confirmed: bool = True
        self.cof_index: int = 0
        self.loop: bool = False
        self.mode: str = 'melodic minor'
        self.show_fingerings: bool = False
        self.show_slurs: bool = False
        self.durations: list = [__speeds[2], __speeds[5]]
        self.tempo: int = 60

        for variable in ['concert_pitch', 'exercise', 'loop',
                         'acc_instrument', 'acc_drone', 'acc_drone_fifths', 'acc_chords',
                         'mode', 'show_fingerings', 'show_slurs', 'durations', 'tempo']:
            st.session_state[variable] = getattr(self, variable)

    @property
    def pitch(self):
        return MUSIC.CIRCLE_OF_FIFTHS[self.mode.split()[-1]][self.cof_index]

    def exercise_changed(self):
        self.exercise = st.session_state.exercise
        self.changes_confirmed = False

    def change_pitch_index(self, inc: int, length: int):
        self.cof_index = (self.cof_index + inc) % length
        self.changes_confirmed = False

    def acc_drone_changed(self):
        self.acc_drone = st.session_state.acc_drone
        self.changes_confirmed = False

    def acc_drone_fifths_changed(self):
        self.acc_drone_fifths = st.session_state.acc_drone_fifths
        self.changes_confirmed = False

    def acc_chords_changed(self):
        self.acc_chords = st.session_state.acc_chords
        self.changes_confirmed = False

    def acc_instrument_changed(self):
        self.acc_instrument = st.session_state.acc_instrument
        self.changes_confirmed = False

    def key_confirm(self, pitch):
        self.changes_confirmed = True

    def concert_pitch_changed(self):
        self.concert_pitch = st.session_state.concert_pitch
        self.changes_confirmed = False

    def loop_changed(self):
        self.loop = st.session_state.loop

    def mode_changed(self):
        self.mode = st.session_state.mode
        self.changes_confirmed = False

    def show_fingerings_changed(self):
        self.show_fingerings = st.session_state.show_fingerings
        self.changes_confirmed = False

    def show_slurs_changed(self):
        self.show_slurs = st.session_state.show_slurs
        self.changes_confirmed = False

    def durations_changed(self):
        self.durations = st.session_state.durations
        self.changes_confirmed = False

    def tempo_changed(self):
        self.tempo = st.session_state.tempo
        self.changes_confirmed = False
