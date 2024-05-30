# see also
# https://stackoverflow.com/questions/3195660/how-to-use-numpy-array-with-ctypes
# https://github.com/nwhitehead/pyfluidsynth/blob/master/py
# https://inspiredacoustics.com/en/MIDI_note_numbers_and_center_frequencies
# https://www.fluidsynth.org/api/FileRenderer.html

import ctypes
import os
from ctypes import (
    CDLL,
    CFUNCTYPE,
    POINTER,
    c_char_p,
    c_double,
    c_int,
    c_void_p,
)
from ctypes.util import find_library

import numpy as np

from PYANORA_CONSTANTS import MUSIC

FLUID_OK = 0
FLUID_FAILED = -1

# fluid_player_status returned by fluid_player_get_status()
FLUID_PLAYER_READY = 0
FLUID_PLAYER_PLAYING = 1
FLUID_PLAYER_STOPPING = 2
FLUID_PLAYER_DONE = 3

# DLL search method changed in Python 3.8
# https://docs.python.org/3/library/os.html#os.add_dll_directory
if hasattr(os, 'add_dll_directory'):
    os.add_dll_directory(os.getcwd())
    os.add_dll_directory('C:\\tools\\fluidsynth\\bin')
    # Workaround bug in find_library, it doesn't recognize add_dll_directory
    os.environ['PATH'] += ';C:\\tools\\fluidsynth\\bin'


# A function to find the FluidSynth library
# (mostly needed for Windows distributions of libfluidsynth supplied with QSynth)
def load_libfluidsynth(debug_print: bool = False) -> str:
    r"""
    macOS X64:
    * 'fluidsynth' was loaded as /usr/local/opt/fluid-synth/lib/libfluidsynth.dylib.
    macOS ARM64:
    * 'fluidsynth' was loaded as /opt/homebrew/opt/fluid-synth/lib/libfluidsynth.dylib.
    Ubuntu X86:
    * 'fluidsynth' was loaded as libfluidsynth.so.3.
    Windows X86:
    * 'libfluidsynth-3' was loaded as C:\tools\fluidsynth\bin\libfluidsynth-3.dll.
    """
    libs = "fluidsynth libfluidsynth libfluidsynth-3 libfluidsynth-2 libfluidsynth-1"
    for lib_name in libs.split():
        _lib = find_library(lib_name)
        if _lib:
            if debug_print:
                print(f"'{lib_name}' was loaded as {_lib}.")
            return _lib
    raise ImportError("Couldn't find the FluidSynth library.")


lib = load_libfluidsynth()
_fl = CDLL(lib)


def cfunc(name, result, *args):
    """Build and apply a ctypes prototype complete with parameter flags"""
    if hasattr(_fl, name):
        atypes = []
        aflags = []
        for arg in args:
            atypes.append(arg[1])
            aflags.append((arg[2], arg[0]) + arg[3:])
        return CFUNCTYPE(result, *atypes)((name, _fl), tuple(aflags))
    else:  # Handle Fluidsynth 1.x, 2.x, etc. API differences
        return None


# fluid settings
new_fluid_settings = cfunc('new_fluid_settings', c_void_p)

fluid_settings_setstr = cfunc('fluid_settings_setstr', c_int,
                              ('settings', c_void_p, 1),
                              ('name', c_char_p, 1),
                              ('str', c_char_p, 1))

fluid_settings_setint = cfunc('fluid_settings_setint', c_int,
                              ('settings', c_void_p, 1),
                              ('name', c_char_p, 1),
                              ('val', c_int, 1))

delete_fluid_settings = cfunc('delete_fluid_settings', None,
                              ('settings', c_void_p, 1))

# fluid synth
new_fluid_synth = cfunc('new_fluid_synth', c_void_p,
                        ('settings', c_void_p, 1))

delete_fluid_synth = cfunc('delete_fluid_synth', None,
                           ('synth', c_void_p, 1))

fluid_synth_sfload = cfunc('fluid_synth_sfload', c_int,
                           ('synth', c_void_p, 1),
                           ('filename', c_char_p, 1),
                           ('update_midi_presets', c_int, 1))

# fluid player
new_fluid_player = cfunc('new_fluid_player', c_void_p,
                         ('synth', c_void_p, 1))

delete_fluid_player = cfunc('delete_fluid_player', None,
                            ('player', c_void_p, 1))

fluid_player_add = cfunc('fluid_player_add', c_int,
                         ('player', c_void_p, 1),
                         ('filename', c_char_p, 1))

fluid_player_get_status = cfunc('fluid_player_get_status', c_int,
                                ('player', c_void_p, 1))
fluid_player_join = cfunc('fluid_player_join', c_int,
                          ('player', c_void_p, 1))

fluid_player_play = cfunc('fluid_player_play', c_int,
                          ('player', c_void_p, 1))

fluid_player_stop = cfunc('fluid_player_stop', c_int,
                          ('player', c_void_p, 1))

# file renderer
new_fluid_file_renderer = cfunc('new_fluid_file_renderer',
                                c_void_p,
                                ('synth', c_void_p, 1))

delete_fluid_file_renderer = cfunc('delete_fluid_file_renderer',
                                   None,
                                   ('dev', c_void_p, 1))

fluid_file_renderer_process_block = cfunc('fluid_file_renderer_process_block',
                                          c_int,
                                          ('dev', c_void_p, 1))

fluid_synth_activate_key_tuning = cfunc('fluid_synth_activate_key_tuning', c_int,
                                        ('synth', c_void_p, 1),
                                        ('bank', c_int, 1),
                                        ('prog', c_int, 1),
                                        ('name', c_char_p, 1),
                                        ('pitch', POINTER(c_double), 1),
                                        ('apply', c_int, 1))

fluid_synth_activate_tuning = cfunc('fluid_synth_activate_tuning', c_int,
                                    ('synth', c_void_p, 1),
                                    ('chan', c_int, 1),
                                    ('bank', c_int, 1),
                                    ('prog', c_int, 1),
                                    ('apply', c_int, 1))


def equal_distance_tuning(concert_pitch=443.0):
    _tuning = np.linspace(0, 12800, num=128, endpoint=False) + np.log2(concert_pitch / 440) * 1200
    _tuning = _tuning.ctypes.data_as(ctypes.POINTER(ctypes.c_double))
    return _tuning


def pure_tuning(key=69, concert_pitch=440.0):
    distance = (key + 3) % 12
    distance_ratio = MUSIC.PURE_RATIOS[distance]
    root_frequency = concert_pitch * distance_ratio
    keys = np.linspace(0, 128, 128, endpoint=False, dtype=np.int32)
    freq = 2.0 ** np.int32((keys - key) // 12) * root_frequency * MUSIC.PURE_RATIOS[(keys - key + 144) % 12]
    _tuning = np.log2(freq / 440) * 1200 + 6900
    _tuning = _tuning.ctypes.data_as(ctypes.POINTER(ctypes.c_double))
    return _tuning


def midi2wav(basename, what, tuning: c_void_p = pure_tuning(76)):
    settings = new_fluid_settings()

    fluid_settings_setstr(settings, "player.timing-source".encode(), "sample".encode())
    fluid_settings_setint(settings, "synth.lock-memory".encode(), 0)
    fluid_settings_setstr(settings, 'audio.file.name'.encode(),
                          f"./.assets/{basename}_{what}.wav".encode())
    synth = new_fluid_synth(settings)
    fluid_synth_sfload(synth, "/usr/share/sounds/sf2/FluidR3_GM.sf2".encode(), True)

    player = new_fluid_player(synth)
    renderer = new_fluid_file_renderer(synth)

    # program_select(0, sfid, 0, 0)
    fluid_synth_activate_key_tuning(synth=synth, bank=0, prog=0, name='Test'.encode(),
                                    pitch=tuning,
                                    apply=True)
    fluid_synth_activate_tuning(synth, 0, 0, 0, True)

    fluid_player_add(player, f"./.tmp/{basename}_{what}.midi".encode())
    fluid_player_play(player)

    while fluid_player_get_status(player) == FLUID_PLAYER_PLAYING:
        if fluid_file_renderer_process_block(renderer) != FLUID_OK:
            break

    fluid_player_stop(player)
    fluid_player_join(player)

    delete_fluid_file_renderer(renderer)
    delete_fluid_player(player)
    delete_fluid_synth(synth)
    delete_fluid_settings(settings)


if __name__ == "__main__":
    midi2wav('04232369b269445995926ec4993719e4', 'GP')
