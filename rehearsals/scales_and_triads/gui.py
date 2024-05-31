import os
import streamlit as st

from PYANORA_CONSTANTS import EXERCISE, APP, MUSIC
from .data import data


# special formating


def __f_duration(s: str) -> str:
    return s[1:]


def __f_mode(s: str):
    return s.split()[0]


def __f_pitch(p: str) -> str:
    _p = p + 'n'
    _a = {'f': '$_{\\scriptsize\\flat}$',
          'n': '${\\scriptsize\\natural}$',
          's': '$^{\\scriptsize\\sharp}$'}
    return p[0] + _a[_p[1]]


def __accompany_tab(tab):
    state = st.session_state.pyanora.state

    accompany = [_e for _k, _e in APP.ACCOMPANY.items()]
    tab.selectbox('Accompany', accompany, key='accompamy',
                  index=accompany.index(state.accompany))

    tab.slider('Concert pitch (Hz)',
               438.0, 448.0, step=0.5, key='concert_pitch', disabled=False,
               value=state.concert_pitch,
               on_change=state.concert_pitch_changed)


def __about_tab(tab):
    with open('./README.md', 'r') as fd:
        text = fd.read()
    tab.markdown(text)


def __exercise(tab):
    _state = st.session_state.pyanora.state
    tab.selectbox('Exercise', EXERCISE.TYPES, key='exercise',
                  index=EXERCISE.TYPES.index(_state.exercise),
                  on_change=_state.exercise_changed)


def __pitch(tab):
    _state = st.session_state.pyanora.state

    cols = tab.columns([1, 1, 1])
    cols[0].markdown('$\\textsf{\\scriptsize Pitch}$')
    if not _state.changes_confirmed:
        cols[1].markdown(':red[$\\downarrow\\textsf{\\scriptsize click to confirm}\\downarrow$]')

    _prim_sec = 'secondary'
    if _state.changes_confirmed:
        _prim_sec = 'primary'

    k_c = _state.cof_index
    # get circle of fifths for either major or minor
    c_o_f = MUSIC.CIRCLE_OF_FIFTHS[_state.mode.split()[-1]]
    length = len(c_o_f)

    pitches = [c_o_f[(k_c - 1 + length) % length], c_o_f[k_c], c_o_f[(k_c + 1) % length]]

    cols = tab.columns([1, 1, 1])
    pitch = pitches[0]
    cols[0].button(f'$\\small\\leftarrow$ {__f_pitch(pitch)}',
                   kwargs={'inc': length - 1, 'length': length},
                   on_click=_state.change_pitch_index, use_container_width=True)
    pitch = pitches[1]
    cols[1].button(f'{__f_pitch(pitch)}',
                   kwargs={'pitch': pitch}, type=_prim_sec,
                   on_click=_state.key_confirm, use_container_width=True)
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
    cols[2].button(f'{__f_pitch(pitch)} $\\small\\rightarrow$',
                   kwargs={'inc': 1, 'length': length},
                   on_click=_state.change_pitch_index, use_container_width=True)


def __mode(tab):
    _state = st.session_state.pyanora.state
    _modes = list(data[_state.pitch])

    # cols[1].markdown('$\\textsf{\\scriptsize permute}$ $\\textsf{\\scriptsize through}$')
    # cols[1].markdown(
    #     '$\\textsf{\\scriptsize circle}$ $\\textsf{\\scriptsize of}$ $\\textsf{\\scriptsize fifths}$')

    # --------------------------------------------------------------------------------------------------------------
    _index = 0
    if _state.mode in _modes:
        _index = _modes.index(_state.mode)
    else:
        maj_min = _state.mode.split()[-1]
        for _m in _modes:
            if maj_min in _m:
                _index = _modes.index(_m)
                break
    tab.radio('Mode', options=_modes, key='mode', horizontal=True, format_func=__f_mode,
              index=_index, on_change=_state.mode_changed)


def __tempo(tab):
    _state = st.session_state.pyanora.state
    tab.slider('Tempo (b.p.m.)', 30, 240, step=5, key='tempo',
               value=_state.tempo, on_change=_state.tempo_changed)


def __note_duration(tab):
    _state = st.session_state.pyanora.state
    tab.multiselect('Duration of Notes', EXERCISE.DURATIONS, format_func=__f_duration,
                    key='durations',
                    default=_state.durations,
                    on_change=_state.durations_changed)


def __slurs_fingering(tab):
    _state = st.session_state.pyanora.state
    _cols = tab.columns(3)
    _cols[0].checkbox('Slurs', key='show_slurs',
                      value=_state.show_slurs,
                      on_change=_state.show_slurs_changed)
    _cols[1].checkbox('Fingerings', key='show_fingerings',
                      value=_state.show_fingerings,
                      on_change=_state.show_fingerings_changed)


def __rehearsal_tab(tab):
    __exercise(tab)
    __pitch(tab)
    __mode(tab)
    __tempo(tab)
    __note_duration(tab)
    __slurs_fingering(tab)


def __sidebar():
    with st.sidebar:
        tabs = st.tabs(['Rehearsal', "Accompany", "About", ])
        # fill the tabs:
        __rehearsal_tab(tabs[0])
        __accompany_tab(tabs[1])
        __about_tab(tabs[2])


def __main_window():
    state = st.session_state.pyanora.state
    # check for file existance before showing them
    if os.path.exists(f'{APP.FOLDER.ASSETS}/{state.basename}_instr_only.svg'):
        # the sheet music
        st.image(f'{APP.FOLDER.ASSETS}/{state.basename}_instr_only.svg', use_column_width='always')

    # the audio file

    cond1 = state.accompany == APP.ACCOMPANY['GP'] and os.path.exists(
        f'.assets/{state.basename}_instr_metro.wav')
    cond2 = state.accompany != APP.ACCOMPANY['GP']  # and self.audio.signal is not None

    if cond1 or cond2:
        cols = st.columns([0.9, 0.1])
        if cond1:
            cols[0].audio(f'.assets/{state.basename}_instr_metro.wav', loop=state.loop)
        if cond2:
            pass  # cols[0].audio(self.audio.signal, loop=para.loop, sample_rate=pyanora.SAMPLE_RATE)
        cols[1].checkbox('Loop', key='loop', on_change=state.loop_changed)


def gui():
    __sidebar()
    __main_window()
