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
        "Grand Piano": 'instrument_metronome',
        "Drone Root": 'instrument_drone',
        "Drone Fifth": 'instrument_drone_fifths',
        "Chords": 'instrument_chords'}


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
