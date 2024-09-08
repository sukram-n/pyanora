import os
import subprocess
from dataclasses import dataclass
from multiprocessing import Pool

import streamlit as st
from streamlit.delta_generator import DeltaGenerator

from PYANORA_CONSTANTS import APP
from fluidsynth import midi2wav
from lilypond import HEADER, BOOK_SCORE_BEGIN, KINDS, BOOK_SCORE_END, LILY2MIDI


class Rehearsal:

    @property
    def p_state(self):
        return st.session_state.pyanora.state

    @property
    def basename(self):
        return self.p_state.basename

    def filename(self, kind):
        return f'{self.basename}_{kind}'

    def _create_sources(self):
        raise NotImplementedError

    def _score_input(self):

        score_input = {
            'sheetmusic': ['Instrument'],
            'audio': ['Instrument']
        }

        if self.p_state.acc_instrument:
            score_input['audio'].append('Instrument')
        if self.p_state.acc_drone:
            score_input['audio'].append('Drone')
        if self.p_state.acc_drone_fifths:
            score_input['audio'].append('DroneFifths')
        if self.p_state.acc_chords:
            score_input['audio'].append('Chords')

        return score_input
        """
        score_content = {'sheetmusic': {'pre': '', 'post': ''}, 'audio': {'pre': '', 'post': ''}}

        for kind in score_content:
            score_content[kind]['pre'] += f'pyanora_{kind} = {{\n<<\n'
            for instr in ['Instrument', 'Drone', 'DroneFifths', 'Chords']:
                if instr in score_input[kind]:
                    score_content[kind]['pre'] += (f'\\new Staff \\with {{ midiInstrument = "grand acoustic" '
                                                   f' \\RemoveAllEmptyStaves }}')
                    score_content[kind]['pre'] += f'\\transpose c {self.p_state.pitch + octave} '
                    score_content[kind]['pre'] += f'''\\relative {{
                    \\tempo 4={self.p_state.tempo}
                    \\pyanora_{instr}
                }}'''
            if 'Metronome' in score_input[kind]:
                score_content[kind] += f'''
                \\new Staff \\with {{ midiInstrument = "woodblock" \\RemoveAllEmptyStaves }}{{
                    \\tempo 4={self.p_state.tempo}
                    \\pyanora_Metronome
                  }}'''
            score_content[kind]['pre'] += '>>\n}\n'


        return score_content
        """

    def _construct_and_compile_lilypond_files(self, kind):

        sources, octave = self._create_sources()
        score_input = self._score_input()

        total_source = HEADER
        for key in ['All', st.session_state.pyanora.state.current_rehearsal_name]:
            total_source += f'\\include "../lilypond/ly/{key.lower().replace(" ", "")}/pre/macros.ly"\n'
            total_source += f'\\include "../lilypond/ly/{key.lower().replace(" ", "")}/pre/functions.ly"\n'

        total_source += f'pyanoraOutputName = "{self.filename(kind)}"\n'

        for instr in sources:
            total_source += sources[instr] + '\n'

        for key in ['All', st.session_state.pyanora.state.current_rehearsal_name]:
            total_source += f'\\include "../lilypond/ly/{key.lower().replace(" ", "")}/post/macros.ly"\n'
            total_source += f'\\include "../lilypond/ly/{key.lower().replace(" ", "")}/post/functions.ly"\n'

        total_source += f'pyanora_{kind} = {{\n<<\n'

        for instr in ['Instrument', 'Drone', 'DroneFifths', 'Chords']:
            if instr in score_input[kind]:
                total_source += (f'\\new Staff \\with {{ midiInstrument = "grand acoustic" '
                                 f' \\RemoveAllEmptyStaves }}')
                total_source += f'\\transpose c {self.p_state.pitch + octave} '
                total_source += '\\relative {'
                if self.p_state.current_rehearsal_name == 'Scales and Triads' \
                        and instr == 'Instrument':
                    total_source += f'\\tempo 4={self.p_state.tempo}'
                total_source += f'\\pyanora_{instr}}}'
        if 'Metronome' in score_input[kind]:
            total_source += f'''
            \\new Staff \\with {{ midiInstrument = "woodblock" \\RemoveAllEmptyStaves }}{{
                \\tempo 4={self.p_state.tempo}
                \\pyanora_Metronome
              }}'''

        total_source += '\n>>\n}\n'

        total_source += BOOK_SCORE_BEGIN
        total_source += f'\\pyanora_{kind}\n'

        total_source += KINDS[kind]
        total_source += BOOK_SCORE_END

        with open(f'{APP.FOLDER.TMP}/{self.filename(kind)}.ly', 'w') as file:
            file.write(total_source)

        subprocess.run(
            ['lilypond',
             '--silent',
             '-dno-point-and-click', '--svg', f'--output={APP.FOLDER.TMP}',
             f'{APP.FOLDER.TMP}/{self.filename(kind)}.ly'])
        if 'sheetmusic' in kind:
            # trim svg with inkscape
            subprocess.run(
                ['inkscape',
                 f'{APP.FOLDER.TMP}/{self.filename(kind)}.svg',
                 f'--export-filename={APP.FOLDER.ASSETS}/{self.filename(kind)}.svg',
                 '--export-area-drawing'])
        else:
            state = st.session_state.pyanora.state
            tuning = midi2wav.pure_tuning(LILY2MIDI[state.pitch], state.concert_pitch)
            midi2wav.midi2wav(state.basename, tuning=tuning)

    def construct_and_compile_lilypond_files(self):
        with Pool(2) as pool:
            result = pool.map(
                self._construct_and_compile_lilypond_files,
                [k for k in KINDS])

    def prepare(self):
        if self.p_state.changes_confirmed:
            # score_content = self._create_score_content()
            self.construct_and_compile_lilypond_files()

    def gui(self):
        self._main_window()
        self._sidebar()

    def _main_window(self):

        __s = self.p_state

        # check for file existance before trying to show them
        if os.path.exists(f'{APP.FOLDER.ASSETS}/{__s.basename}_sheetmusic.svg'):
            # the sheet music
            st.image(f'{APP.FOLDER.ASSETS}/{__s.basename}_sheetmusic.svg', use_column_width='always')

        # the audio file

        if os.path.exists(f'.assets/{__s.basename}_audio.wav'):
            cols = st.columns([0.9, 0.1])
            cols[0].audio(f'.assets/{__s.basename}_audio.wav', loop=__s.loop)
            cols[1].checkbox('Loop', key='loop', on_change=__s.loop_changed)

    def _sidebar(self, *args, **kwargs):
        raise NotImplementedError


@dataclass
class _AboutTab:
    tab: DeltaGenerator

    def __post_init__(self):
        with open('./README.md', 'r') as fd:
            text = fd.read()
        self.tab.markdown(text)
