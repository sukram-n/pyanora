from multiprocessing import Pool
import subprocess

import streamlit as st

from PYANORA_CONSTANTS import APP, EXERCISE, LILYPOND
from fluidsynth import midi2wav
from .data import extract_data


def __get_template_as_list() -> tuple[list[str], str]:
    state = st.session_state.pyanora.state
    data_set, octave = extract_data(
        state.pitch,
        state.mode,
        state.exercise)
    template_as_list = []
    current_clef = ''
    for d in data_set:
        clef = '-'
        if current_clef != d.clef and d.clef != '-':
            clef = current_clef = d.clef

        ff = ""
        string = '-'
        if state.show_fingerings:
            for f in d.finger:
                ff += LILYPOND.TRANSLATIONS[f]
            string = d.string

        text = f"{LILYPOND.TRANSLATIONS[clef]}{d.pitch_template}X{ff}{LILYPOND.TRANSLATIONS[string]}"
        template_as_list.append(text)

    return template_as_list, octave


def __get_sources_as_list(template_as_list: list[str]):
    state = st.session_state.pyanora.state
    sources_as_list = []

    for speed in sorted(state.durations):

        # if sources_as_list:
        #     sources_as_list[-1][-1] = f'{sources_as_list[-1][-1]}\\bar "||"'

        # n_ticks is the number of music/midi time ticks
        # 48 time ticks make up one 4/4 bar
        # note_value is one of 1/16 = 'sixteenth', 1/8 = 'eights', etc.
        # in most cases n_o_events=note_values but for triples
        # these values are different, e.g. 12 and 8 will give triplets of eights
        n_ticks, note_value = EXERCISE.DURATIONS[speed]

        # set duration
        source = []
        event = ''
        for event in template_as_list:
            event = event.replace('X', f'{note_value}')
            source.append(event)
        if not event.startswith('F'):
            source.append('F')
        sources_as_list.append((n_ticks, note_value, source))

    new_source_list = []
    for n_ticks, note_value, source in sources_as_list:
        new_source = []
        duration = 0
        i_event = 0
        while source:
            event = source.pop(0)
            if state.show_slurs and duration % 48 == 0:
                event = event + "\\("
            if event.startswith('F'):
                if state.show_slurs:
                    new_source[-1] = new_source[-1] + "\\)"
                    if new_source[-1].endswith("\\(\\)"):
                        new_source[-1] = new_source[-1].split("\\(")[0]
                while duration % 48 != 0:
                    new_source.append(f'r{note_value}')
                    duration += n_ticks
            else:
                new_source.append(event)
                duration += n_ticks
                if state.show_slurs and duration % 48 == 0:
                    new_source[-1] = new_source[-1] + "\\)"
                    if new_source[-1].endswith("\\(\\)"):
                        new_source[-1] = new_source[-1].split("\\(")[0]

        if 48 // n_ticks != note_value:
            for i in range(0, len(new_source), 3):
                if (new_source[i].startswith('r') and
                        new_source[i + 1].startswith('r') and new_source[i + 2].startswith('r')):
                    new_source[i] = f'r{note_value // 2}'
                    new_source[i + 1] = ''
                    new_source[i + 2] = ''
                else:
                    new_source[i] = f'\\tuplet 3/2 4{{{new_source[i]}'
                    new_source[i + 2] = f'{new_source[i + 2]}}}'
        new_source = [event for event in new_source if event]
        new_source_list.append(new_source)

    # collect rests
    sources_as_list = []
    for source in new_source_list:
        found = True
        while found:
            found = False
            for idx in range(len(source) - 1, 0, -1):
                if source[idx] == source[idx - 1] and source[idx].startswith('r'):
                    source[idx - 1] = f'r{int(source[idx][1:]) // 2}'
                    source[idx] = ''
                    found = True

            source = [event for event in source if event]
        sources_as_list.append(source)

    for source in sources_as_list[:-1]:
        source[-1] = source[-1] + '\\bar "||"'
    sources_as_list[-1][-1] = sources_as_list[-1][-1] + '\\bar "|."'

    return sources_as_list


def __get_source() -> tuple[str, str, str]:
    state = st.session_state.pyanora.state
    template_as_list, octave = __get_template_as_list()
    sources_as_list = __get_sources_as_list(template_as_list)

    _key = f'\\key c \\{state.mode.split()[-1]}\n'
    sources_as_list[0][0] = _key + 'r1' + sources_as_list[0][0]

    instrument = ''
    for source_as_list in sources_as_list:
        for i in source_as_list:
            instrument += f' {i}'

    metronome = 'c4 c4 c4 c4'

    return instrument, metronome, octave


def __instrument_only(instrument, octave) -> str:
    state = st.session_state.pyanora.state
    source = LILYPOND.INSTRUMENT_ONLY.format(
        state.basename,
        instrument,
        state.pitch + octave,
        state.tempo)
    file_name = f'{state.basename}_instr_only'
    with open(f'{APP.FOLDER.TMP}/{file_name}.ly', 'w') as file:
        file.write(source)
    return file_name


def __instrument_metronome(instrument, octave) -> str:
    state = st.session_state.pyanora.state
    source = LILYPOND.INSTRUMENT_METRONOME.format(
        state.basename,
        instrument,
        "c''4 c c c",
        state.pitch + octave,
        state.tempo)
    file_name = f'{state.basename}_instr_metro'
    with open(f'{APP.FOLDER.TMP}/{file_name}.ly', 'w') as file:
        file.write(source)
    return file_name


def __sub_process(file_name):
    subprocess.run(
        ['lilypond', '--silent', '-dno-point-and-click', '--svg', f'--output={APP.FOLDER.TMP}',
         f'{APP.FOLDER.TMP}/{file_name}.ly'])


def __prepare_sheet_music() -> None:
    state = st.session_state.pyanora.state
    files_to_process = []
    instrument, metronome, octave = __get_source()
    file_name = __instrument_metronome(instrument, octave)
    files_to_process.append(file_name)
    file_name = __instrument_only(instrument, octave)
    files_to_process.append(file_name)

    with Pool(len(files_to_process)) as pool:
        result=pool.map(__sub_process, files_to_process)

    # trim svg with inkscape
    subprocess.run(
        ['inkscape',
         f'{APP.FOLDER.TMP}/{file_name}.svg',
         f'--export-filename={APP.FOLDER.ASSETS}/{file_name}.svg',
         '--export-area-drawing'])


def __prepare_audio():
    state = st.session_state.pyanora.state
    tuning = midi2wav.pure_tuning(LILYPOND.LILY2MIDI[state.pitch], 443.0)
    midi2wav.midi2wav(state.basename, what='instr_metro', tuning=tuning)


def prepare():
    state = st.session_state.pyanora.state
    if not state.changes_confirmed:
        return
    __prepare_sheet_music()
    __prepare_audio()
