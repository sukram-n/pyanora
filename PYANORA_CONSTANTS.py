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
        'GP': "Grand Piano (non pure)",
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

    HEADER = ('\\version "2.24.1" \\language "english" \\include "./../lilypond/commons.ly"\n'
              '\\book {{\n\\paper{{ tagline = ##f }}\n\\bookOutputName "{}_{}" \\score {{ \\new '
              'Staff \\with {{ midiInstrument = "acoustic grand" }} \\transpose c {}{} \\relative c,{{\\tempo 4={}')
