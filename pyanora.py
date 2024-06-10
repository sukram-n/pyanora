import os
import time

import streamlit as st

from PYANORA_CONSTANTS import APP
import rehearsals.excerpts as excerpts
import rehearsals.scales_and_triads as scales_and_triads
from state import State

# ToDo
# - get rid of commons.ly


class PyanoRA:
    """ we keep all stateful stuff of the app in this class and its subclasses"""

    # This dictionary contains the available types of rehearsal
    # Each rehearsal has its own class.
    # For simplicity the "About" information window is handled like all other, though it's not a rehearsal.

    def __init__(self):
        # Each app instance needs a unique string for storing data temporarilly.
        # This prevents interference if more than one instance of the app is running.

        self.state = State()
        self.rehearsals = {}

        # create folders for temporary data
        for folder in [APP.FOLDER.TMP, APP.FOLDER.ASSETS, ]:
            if not os.path.exists(folder):
                os.mkdir(folder)

    @property
    def current_rehearsal(self):
        return self.rehearsals[self.state.current_rehearsal_name]

    def prepare(self):
        # delegate to current rehearsal class
        self.current_rehearsal.prepare()

    def gui(self):
        st.write('Your Piano Rehearsal Accompanist')

        with st.sidebar:
            st.selectbox('Show', self.rehearsals, key='current_rehearsal_name', label_visibility='collapsed')

        self.current_rehearsal.gui()

    @staticmethod
    def clean_up() -> None:
        """
        remove old files
        """

        # A little bit of tidying:
        # delete everything that is
        # - older than 600 seconds in the `./.tmp` folder and
        # - older than two hours in the `./.assets` folder

        for folder, age in [(APP.FOLDER.TMP, 600), (APP.FOLDER.ASSETS, 1800)]:
            content = os.listdir(folder)
            # print(content)
            for entry in content:
                file = f'{folder}/{entry}'
                file_time = os.path.getmtime(file)
                if (time.time() - file_time) > age:
                    os.remove(file)


def main():
    st.set_page_config(layout="wide", page_icon=':musical_keyboard:')

    if "pyanora" not in st.session_state:

        # ok, then this is the initial run
        # Prepare the app session with class instances and variables.
        # We keep our stuff in an own class instance to avoid name space conflicts
        # this instance is stored in `st.sessionstate.pyanora`
        pyanora = PyanoRA()

        pyanora.rehearsals = {
            'Scales and Triads': scales_and_triads,
            'Excerpts': excerpts
        }
        pyanora.state.current_rehearsal_name = 'Scales and Triads'

        st.session_state['pyanora'] = pyanora
    else:
        pyanora = st.session_state['pyanora']

    pyanora.clean_up()
    pyanora.prepare()
    pyanora.gui()


if __name__ == "__main__":
    main()
