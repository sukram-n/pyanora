import streamlit as st

from rehearsals.data.excerpts import composers
# from rehearsals.audio import Audio
# from rehearsals.excerpts.lilypond import Lilypond
from .rehearsal import Rehearsal


# from .prepare import _prepare


class Excerpts(Rehearsal):

    def _instrument_source(self):
        if self.p_state.composer is None:
            self.p_state.composer = [c for c in composers][0]
            st.session_state.composer = self.p_state.composer
        if self.p_state.composition is None:
            # composition not defined
            self.p_state.composition = [c for c in composers[self.p_state.composer]][0]
            st.session_state.composition = self.p_state.composition
        if self.p_state.excerpt is None:
            # excerpt not defined
            self.p_state.excerpt = [e for e in composers[self.p_state.composer][self.p_state.composition]['excerpts']][
                0]
            st.session_state.excerpt = self.p_state.excerpt

        excerpt_file = ""
        try:
            data = composers[self.p_state.composer][self.p_state.composition]
            excerpt_file = data['folder'][0] + '/' + data['folder'][1] + '/' + data['excerpts'][self.p_state.excerpt]
        except KeyError as error:
            print(error)

        excerpt = ''  # write_reset()
        with open('rehearsals/data/excerpts/' + excerpt_file, encoding='utf-8') as fd:
            _source = fd.readlines()

        for s in _source:
            if 'include' not in s and 'reset' not in s:
                excerpt += s
        self.p_state.mode = 'major'
        self.p_state.pitch = 'c'
        if "\\tempo" in excerpt:
            n_t = excerpt.count('\\tempo')
            i_found = 0
            for i_t in range(n_t):
                i_found = excerpt.find('\\tempo', i_found)
                while i_found < len(excerpt):
                    if excerpt[i_found] == '\n' or excerpt[i_found] == '=':
                        break
                    i_found += 1
                if excerpt[i_found] == '=':
                    i = 1
                    while excerpt[i_found+i] == ' ' or excerpt[i_found+i].isnumeric():
                        i += 1
                    tempo = int(excerpt[i_found+1:i_found+i])
                    excerpt = excerpt[:i_found+1] + f'{int(tempo*self.p_state.tempo/100)}' + excerpt[i_found+i:]
        return excerpt, ''

    def _create_sources(self):

        if not self.p_state.changes_confirmed:
            return
        sources = {}
        instrument, octave = self._instrument_source()

        sources['Instrument'] = instrument

        # sources['Metronome'] = self.get_metronome()
        # sources['Drone'] = self.get_drone(total_duration)
        # sources['DroneFifths'] = self.get_drone_fifths(total_duration)
        # sources['Chords'] = self.get_chords()
        return sources, octave

    def _sidebar(self):

        with st.sidebar:
            # if 'musickeys' not in state:
            #    musickeys = []
            #    for key, _exercises in sat_data.items():
            #        musickeys.append(key)
            #    state['musickeys'] = musickeys

            _composers = [c for c in composers]
            st.selectbox('Composer', _composers,
                         key='composer', on_change=self.p_state.composer_changed,
                         placeholder='Choose',
                         )

            if self.p_state.composer is None:
                return

            _compositions = [c for c in composers[self.p_state.composer]]
            st.selectbox('Composition', _compositions, key='composition', disabled=len(_compositions) < 1,
                         placeholder='Choose',
                         on_change=self.p_state.composition_changed)

            if self.p_state.composition is None:
                return
            _excerpts = [c for c in composers[self.p_state.composer][self.p_state.composition]['excerpts']]

            st.selectbox('Excerpt', _excerpts, key='excerpt', disabled=len(_excerpts) < 1,
                         placeholder='Choose',
                         on_change=self.p_state.excerpt_changed)

            if self.p_state.excerpt is None:
                return

            # cols[1].selectbox('Choose Key', state.musickeys, key='musickey', index=0)

            st.slider('Tempo (%)', 25, 200, step=5, key='tempo', value=100,
                      on_change=self.p_state.tempo_changed)

            # sat.multiselect('Value of Notes', SPEEDS, format_func=format_func, key='speeds',
            #                default='31/4 notes')

            # acc_instr = [_e for _k, _e in cst.ACCOMPANY.items()]
            # sat.selectbox('Accompanying Instrument', acc_instr, key='acc_instr', index=0)

            # disabled = False
            # if state.p_a.exercises.acc_instr == cst.ACCOMPANY['GP']:
            #    disabled = True

            # sat.slider('Reference a at (Hz)',
            #           438.0, 448.0, step=0.5, value=443.0, key='reference_frequency', disabled=disabled)

            cols = st.columns(2)
            # cols[0].checkbox('Slurs', key='slurs')
            cols[1].checkbox('Fingerings', key='fingerings')
