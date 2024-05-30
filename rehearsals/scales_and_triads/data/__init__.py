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

templates = {
    'major': {
        'One Octave': 'c d e f g a b c b a g f e d c',
        'Two Octaves': 'c d e f g a b c d e f g a b c b a g f e d c b a g f e d c',
        'Triads': 'c e g e c F c e g c g e c F c e g c e c g e c F c e g c e g e c g e c F c e g c e g c g e c g e c'
    },
    'natural minor': {
        'One Octave': 'c d ef f g af bf c bf af g f ef d c',
        'Two Octaves': 'c d ef f g af bf c d ef f g af bf c bf af g f ef d c bf af g f ef d c',
        'Triads': 'c ef g ef c F c ef g c g ef c F c ef g c ef c g ef c F c ef g c ef g ef c g ef c F c ef g c ef g c'
                  ' g ef c g ef c'
    },
    'harmonic minor': {
        'One Octave': 'c d ef f g af b c b af g f ef d c',
        'Two Octaves': 'c d ef f g af b c d ef f g af b c b af g f ef d c b af g f ef d c',
        'Triads': 'c ef g ef c F c ef g c g ef c F c ef g c ef c g ef c F c ef g c ef g ef c g ef c F c ef g c ef g c'
                  ' g ef c g ef c'
    },
    'melodic minor': {
        'One Octave': 'c d ef f g a b c bf af g f ef d c',
        'Two Octaves': 'c d ef f g a b c d ef f g a b c bf af g f ef d c bf af g f ef d c',
        'Triads': 'c ef g ef c F c ef g c g ef c F c ef g c ef c g ef c F c ef g c ef g ef c g ef c F c ef g c ef g c'
                  ' g ef c g ef c'
    }
}


@dataclass(kw_only=True)
class Datum:
    finger: str
    clef: str
    string: str
    pitch_template: str


def _clean_up(t: str) -> str:
    """remove multiple spaces"""
    while '  ' in t:
        t = t.replace('  ', ' ')
    return t.strip()


def extract_data(pitch, mode, exercise) -> tuple[list[Datum], str]:
    _data = []
    letters = _clean_up(templates[mode][exercise]).split()
    length = len(letters)
    _ = {}
    for t in 'level fingers clefs strings'.split():
        _[t] = (_clean_up(data[pitch][mode][exercise][t]).split() + ['-'] * length)[:length]

    for letter, finger, clef, string in zip(letters, _['fingers'], _['clefs'], _['strings']):
        _data.append(Datum(finger=finger,
                           clef=clef,
                           string=string,
                           pitch_template=letter))
    if _['level'][0] == '-':
        return _data, ""
    return _data, _['level'][0]
