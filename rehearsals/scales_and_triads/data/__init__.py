from dataclasses import dataclass

from .a import a
from .b import b
from .c import c
from .d import d
from .e import e
from .f import f
from .g import g

data = {
    'af': a['af'], 'a': a['a'], 'as': a['as'],
    'bf': b['bf'], 'b': b['b'], 'bs': b['bs'],
    'cf': c['cf'], 'c': c['c'], 'cs': c['cs'],
    'df': d['df'], 'd': d['d'], 'ds': d['ds'],
    'ef': e['ef'], 'e': e['e'], 'es': e['es'],
    'ff': f['ff'], 'f': f['f'], 'fs': f['fs'],
    'gf': g['gf'], 'g': g['g'], 'gs': g['gs'],
}

defaults = {
    'double bass': {
        'clef': 'bass_8'
    }
}

templates = {
    'major': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~e~f~g~a~b~c~b~a~g~f~e~d~c',
            'chords': ''
        },

        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~e~f~g~a~b~c~d~e~f~g~a~b~c~b~a~g~f~e~d~c~b~a~g~f~e~d~c',
            'chords': ''
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~e~g~e~c~F~c~e~g~c~g~e~c~F~c~e~g~c~e~c~g~e~c~F~c~e~g~c~e~g~e~c~g~e~c~F~c~e~g~c~e~g~c~g~e~c~g~e'
                     '~c',
            'chords': ''
        },
    },
    'natural minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~bf~c~bf~af~g~f~ef~d~c',
            'chords': ' ',
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~bf~c~d~ef~f~g~af~bf~c~bf~af~g~f~ef~d~c~bf~af~g~f~ef~d~c',
            'chords': ''
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': ''
        },
    },
    'harmonic minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~b~c~b~af~g~f~ef~d~c',
            'chords': ''
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~b~c~d~ef~f~g~af~b~c~b~af~g~f~ef~d~c~b~af~g~f~ef~d~c',
            'chords': ''
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': ''
        },
    },
    'melodic minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~a~b~c~bf~af~g~f~ef~d~c',
            'chords': ''
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~a~b~c~d~ef~f~g~a~b~c~bf~af~g~f~ef~d~c~bf~af~g~f~ef~d~c',
            'chords': ' ',
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': ' ',
        },
    }
}


@dataclass(kw_only=True)
class Datum:
    finger: str
    clef: str
    string: str


def _clean_up(t: str) -> str:
    """remove~multiple~spaces"""
    while '  ' in t:
        t = t.replace('  ', ' ')
    return t.strip()


def extract_data(pitch, mode, exercise) -> tuple[list[Datum], str]:
    _data = []
    _ = {}
    l_max = len(templates[mode][exercise]['notes'].split('~'))

    for t in 'level fingers clefs strings'.split():
        _[t] = _clean_up(data[pitch][mode][exercise][t]).split()
        _[t] = (_[t] + ['-'] * l_max)[:l_max]
    for finger, clef, string in zip(_['fingers'], _['clefs'], _['strings']):
        _data.append(Datum(finger=finger,
                           clef=clef,
                           string=string))
    if _['level'][0] == '-':
        return _data, ""
    return _data, _['level'][0]
