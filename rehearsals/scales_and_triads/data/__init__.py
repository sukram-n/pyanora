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
            'chords': '<e g c>~<g b d>~<g c e>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<e g c>~<d g b>~<c f a>~<b d g>~<a c f>~<g c e>~<g b d>~'
                      '<e g c>~'
        },

        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~e~f~g~a~b~c~d~e~f~g~a~b~c~b~a~g~f~e~d~c~b~a~g~f~e~d~c',
            'chords': '<e g c>~<g b d>~<g c e>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<e g c>~<g b d>~<g c e>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<e g c>~<d g b>~<c f a>~<b d g>~<a c f>~<g c e>~<g b d>~'
                      '<e g c>~<d g b>~<c f a>~<b d g>~<a c f>~<g c e>~<g b d>~'
                      '<e g c>~'
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~e~g~e~c~F~'
                     'c~e~g~c~g~e~c~F~'
                     'c~e~g~c~e~c~g~e~c~F~'
                     'c~e~g~c~e~g~e~c~g~e~c~F~'
                     'c~e~g~c~e~g~c~g~e~c~g~e~c',
            'chords': '<e g c>~<g c e>~<c e g>~<g c e>~<e g c>~F~'
                      '<e g c>~<g c e>~<c e g>~<e g c>~<c e g>~<g c e>~<e g c>~F~'
                      '<e g c>~<g c e>~<c e g>~<e g c>~<g c e>~<e g c>~<c e g>~<g c e>~<e g c>~F~'
                      '<e g c>~<g c e>~<c e g>~<e g c>~<g c e>~<c e g>~<g c e>~<e g c>~<c e g>~<g c e>~<e g c>~F~'
                      '<e g c>~<g c e>~<c e g>~<e g c>~<g c e>~<c e g>~'
                      '<e g c>~<c e g>~<g c e>~<e g c>~<c e g>~<g c e>~<e g c>~',
        },
    },
    'natural minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~bf~c~bf~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<af c f>~<bf d g>~<c f af>~<d g bf>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~bf~c~d~ef~f~g~af~bf~c~bf~af~g~f~ef~d~c~bf~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<af c f>~<bf d g>~<c f af>~<d g bf>~'
                      '<ef g c>~<g b d>~<g c ef>~<af c f>~<bf d g>~<c f af>~<d g bf>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': '<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~'
                      '<ef g c>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~',
        },
    },
    'harmonic minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~b~c~b~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<af c f>~<b d g>~<c f af>~<d g b>~'
                      '<ef g c>~<d g b>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~af~b~c~d~ef~f~g~af~b~c~b~af~g~f~ef~d~c~b~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<af c f>~<b d g>~<c f af>~<d g b>~'
                      '<ef g c>~<g b d>~<g c ef>~<af c f>~<b d g>~<c f af>~<d g b>~'
                      '<ef g c>~<d g b>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~<d g b>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': '<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~'
                      '<ef g c>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~',
        },
    },
    'melodic minor': {
        'One Octave': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~a~b~c~bf~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Two Octaves': {
            'intro': 'r1',
            'notes': 'c~d~ef~f~g~a~b~c~d~ef~f~g~a~b~c~bf~af~g~f~ef~d~c~bf~af~g~f~ef~d~c',
            'chords': '<ef g c>~<g b d>~<g c ef>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<ef g c>~<g b d>~<g c ef>~<a c f>~<b d g>~<c f a>~<d g b>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~<d g bf>~<c f af>~<bf d g>~<af c f>~<g c ef>~<g bf d>~'
                      '<ef g c>~'
        },
        'Triads': {
            'intro': 'r1',
            'notes': 'c~ef~g~ef~c~F~c~ef~g~c~g~ef~c~F~c~ef~g~c~ef~c~g~ef~c~F~c~ef~g~c~ef~g~ef~c~g~ef~c~F~c~ef~g~c~ef'
                     '~g~c~g~ef~c~g~ef~c',
            'chords': '<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~F~'
                      '<ef g c>~<g c ef>~<c ef g>~<ef g c>~<g c ef>~<c ef g>~'
                      '<ef g c>~<c ef g>~<g c ef>~<ef g c>~<c ef g>~<g c ef>~<ef g c>~',
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
