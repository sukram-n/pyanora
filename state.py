import uuid

import streamlit as st

from PYANORA_CONSTANTS import APP, EXERCISE, MUSIC


class State:

    def __init__(self):

        self.basename = uuid.uuid4().hex

        __speeds = list(EXERCISE.DURATIONS)

        self.current_rehearsal_name = ''

        self.accompany: str = APP.ACCOMPANY['GP']
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

        for variable in ['accompany', 'concert_pitch', 'exercise', 'loop',
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

    def key_confirm(self, pitch):
        self.changes_confirmed = True

    def accompany_changed(self):
        self.accompany = st.session_state.accompany
        self.changes_confirmed = False

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
