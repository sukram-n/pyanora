from dataclasses import dataclass
from typing import ClassVar


@dataclass
class SKELETON:
    _ending: str = ''

    @property
    def ending(self):
        return self._ending

    def source(self, basename,
               instrument_source='',
               metronome_source='',
               drone_source='',
               drone_fifths_source='',
               chords_source='',
               transpose_to='c', tempo=60):
        __source = f'''\\version "2.24.1"
\\language "english"
\\include "./../lilypond/commons.ly"
outputName = "{basename}_{self.ending}"
instrument = {{\n{instrument_source}\n}}
acc_chords = {{\n{chords_source}\n}}
acc_drone = {{\n{drone_source}\n}}
acc_drone_fifths = {{\n{drone_fifths_source}\n}}
metronome = {{\n{metronome_source}\n}}
transposeTo = {transpose_to}
setTempo = \\tempo 4={tempo}
\\include "./../lilypond/{self.ending}.ly"'''

        return __source, f'{basename}_{self.ending}'


@dataclass
class Lilypond:
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

    LILY2MIDI: ClassVar = {
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

    def __post_init__(self):
        self.instrument_only = SKELETON('instrument_only')
        self.instrument_metronome = SKELETON('instrument_metronome')
        self.instrument_drone = SKELETON('instrument_drone')
        self.instrument_drone_fifths = SKELETON('instrument_drone_fifths')
        self.instrument_chords = SKELETON('instrument_chords')

