from dataclasses import dataclass
from typing import ClassVar

MIDI = '''
\\midi {
    \\context {
      \\Score
      midiChannelMapping = #'instrument
      }
}
      '''
LAYOUT = '''
\\layout {
    \\context {
      \\Score
      indent = 0
    }
    \\context {
      \\Staff
      \\accidentalStyle modern-cautionary
    }
}
'''


def create_source(sources,
                  pyanora_output_name,
                  pyanora_transpose_to='c',
                  pyanora_tempo=60,
                  pyanora_output_type=MIDI):
    __source = '\\version "2.24.1"\n'
    __source += '\\language  "english"\n'
    __source += '\\include "./../lilypond/commons.ly"\n'
    __source += f'pyanoraOutputName = "{pyanora_output_name}"\n'
    for source_name in sources:
        __source += f'pyanora{source_name} = {{\n{sources[source_name]}\n}}\n'
    __source += f'pyanoraTransposeTo = {pyanora_transpose_to}\n'
    __source += f'pyanoraSetTempo = \\tempo 4 = {pyanora_tempo}\n'
    __source += f'pyanoraOutputType = {pyanora_output_type} \n'
    __source += '''\\book {
  \\paper{ tagline = ##f }
  \\bookOutputName \\pyanoraOutputName
  \\score {
    \\pyanoraOutputType
    <<'''
    for instr in ['Instrument', 'Drone', 'DroneFifths', 'Chords']:
        if instr in sources:
            __source += f'''
      \\new Staff \\with {{ midiInstrument = "bright acoustic" }}
      \\transpose c \\pyanoraTransposeTo  \\relative c,{{
        \\pyanoraSetTempo
        \\pyanora{instr}
      }}'''
    if 'Metronome' in sources:
        __source += '''\\new Staff \\with { midiInstrument = "woodblock" } {
        \\pyanoraSetTempo
        \\pyanoraMetronome
      }'''
    __source += '''
    >>
  }
}'''
    return __source


@dataclass
class Lilypond:
    VERSION: ClassVar = "2.24.1"

    # SOURCE_TYPES: ClassVar = ['Instrument', 'Metronome', 'Drone', 'DroneFifths', 'Chords']

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
