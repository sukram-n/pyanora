from dataclasses import dataclass
from typing import ClassVar

import numpy as np


# app ------------------------------------------------------------------------------------------------------------------


@dataclass
class FOLDER:
    TMP: ClassVar = './.tmp'
    ASSETS: ClassVar = './.assets'


@dataclass
class APP:
    FOLDER: ClassVar = FOLDER
    ACCOMPANY: ClassVar = {
        'GP': "Grand Piano",
        'DR': "Drone Root (incl. harmonics)",
        'DF': "Drone Fifth (incl. harmonics)",
        'PC': "Pure Chords"}


# music general --------------------------------------------------------------------------------------------------------


@dataclass
class MUSIC:
    TRIPLET: ClassVar = ' -3-'  # chr(0x2E22) + ' ' + chr(0x00B3) + ' ' + chr(0x2E23)

    CIRCLE_OF_FIFTHS: ClassVar = {
        'major': [
            "c", "g", "d", "a", "e", "b", "fs", "gf", "df", "af", "ef", "bf", "f",
        ],
        'minor': [
            "a", "e", "b", "fs", "cs", "gs", "ds", "ef", "bf", "f", "c", "g", "d",
        ]
    }

    PURE_RATIOS: ClassVar = np.array([
        1 / 1,
        16 / 15,
        9 / 8,
        6 / 5,
        5 / 4,
        4 / 3,
        45 / 32,
        3 / 2,
        8 / 5,
        5 / 3,
        9 / 5,
        15 / 8
    ])


@dataclass
class EXERCISE:
    TYPES: ClassVar = ['One Octave', 'Two Octaves', 'Triads']
    DURATIONS: ClassVar = {
        '11/1': (48, 1),
        '21/2': (24, 2),
        '31/4': (12, 4),
        '41/8': (6, 8),
        '51/8' + MUSIC.TRIPLET: (4, 8),
        '61/16': (3, 16)
    }


# lilypond -------------------------------------------------------------------------------------------------------------

class LILYPOND:
    VERSION: ClassVar = "2.24.1"

    TRANSLATIONS: ClassVar = {
        "0": "^\\Nf",
        "1": "^\\If",
        "2": "^\\Mf",
        "3": "^\\Rf",
        "4": "^\\Pf",
        "t": "^\\Tf",
        "-": "",
        "B": '\\clef "bass_8"\n',
        "T": '\\clef "tenor_8"\n',
        "V": '\\clef "violin_8"\n',
        "G": '_\\Gstring ',
        "D": '_\\Dstring ',
        "A": '_\\Astring ',
        "E": '_\\Estring ',
    }

    INSTRUMENT_ONLY = (
        '\\version "2.24.1"\n\\language "english"\n\\include "./../lilypond/commons.ly"\n'
        'outputName = "{}_instr_only"\n'
        'instrument = {{\n{}\n}}\n'
        'transposeTo = {}\n'
        'setTempo = \\tempo 4={}\n'
        '\\include "./../lilypond/instrument_only.ly"'
    )

    INSTRUMENT_METRONOME = (
        '\\version "2.24.1"\n\\language "english"\n\\include "./../lilypond/commons.ly"\n'
        'outputName = "{}_instr_metro"\n'
        'instrument = {{\n{}\n}}\n'
        'metronome = {{\n{}\n}}\n'
        'transposeTo = {}\n'
        'setTempo = \\tempo 4={}\n'
        '\\include "./../lilypond/instrument_metronome.ly"'
    )

    HEADER = ('\\version "2.24.1"\n\\language "english"\n\\include "./../lilypond/commons.ly"\n'
              'instrument = {{\n{}\n }}\n'
              'metronome = {{\n{}\n }}\n'
              '\\book {{\n'
              '  \\paper{{ tagline = ##f }}\n'
              '  \\bookOutputName "{}_{}"\n'
              '  \\score {{\n'
              '    \\layout {{ indent = 0 }}\n'
              '    \\midi {{ }}\n'
              '    <<\n'
              '      \\new Staff \\with {{ midiInstrument = "acoustic grand" }} \\transpose c {}{} \\relative c,{{\n'
              '        \\tempo 4={}\n'
              '        \\instrument'
              '      }}\n'
              '      \\new Staff \\with {{ midiInstrument = "woodblock" }} \\relative c,{{\n'
              '        \\metronome'
              '      }}\n'
              '    >>\n'
              '  }}\n'
              '}}\n')

    LILY2MIDI = {
        'a': 69,
        'as': 70, 'bf': 70,
        'b': 71, 'cf': 71,
        'bs': 72, 'c': 72,
        'cs': 73, 'df': 73,
        'd': 74,
        'ds': 75, 'ef': 75,
        'e': 76, 'ff': 76,
        'es': 77, 'f': 77,
        'fs': 78, 'gf': 78,
        'g': 79,
        'gs': 80, 'af': 80,
    }
