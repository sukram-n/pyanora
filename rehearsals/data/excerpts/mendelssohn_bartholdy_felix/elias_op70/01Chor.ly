titel = \markup{\smallCaps{1 Chor}}
Titel = \markup{\bold\huge  {"Nr." \titel }}

init = {
  \key d \minor
  \time 4/4
  \clef bass
}


BassA = {
  \init
  \tempo "Andante lento" 4=76

  \clef "bass"
  d,4 _\ff d4  d4
  d4 % 2
  d4 r4 r2 % 3
  c-sharp4 c-sharp4  c-sharp4  c-sharp4 % 4
  c-sharp4 r4 r2 % 5
  c4  c4  f,4  f4 % 6
  b-flat4.  b-flat8  b-flat4  b-flat4 % 7
  a2  a2 ~ % 8
  \crescOD a2 ~ \dim  a8  g8

  f8  e8 % 9
  d1 ~ _\p
  d1 ~ % 11
  d1 % 12
  a'1 ~ % 13
  a1 ~ % 14
  a1 % 15
  d1 ~ % 16
  d1 ~ % 17
  d1 ~ % 18
  d1 % 19
  g1 ~
  g2  \crescOD f4 \cresc  d4
  % 21
  a4  g4  f4  d8  d'8 _\f % 22
  a'8.  a16  a8  a8
  g-sharp4  g8  g8 % 23
  f-sharp8  a8  d8.  d16
  d2 % 24
  r8  e,8  f-sharp8  g-sharp8  a8
  a8 _\<  c8 _\>  a8 -\! % 25
  g-sharp4  e4  c4  a4 % 26
  d4  d8  d8  e8
  e8  d8  c8 % 27
  a'8  a8  f8  a8  b4
  a8  g8 % 28
  g2  f-sharp8  d8  e8
  f-sharp8 % 29
  g4  f4  e2
  r8  a,8  a'4.  a8  g-sharp8
  e8 % 31
  a4  c-sharp,4  d8  f8  d8
  c8 % 32
  b4 _\sf  b4 r8  b8  c8
  c8 _\f % 33
  b4  b4 r8  b8  c8  c8
  % 34
  b8 _\f  a'8  a8  b8
  c8  a8  f-sharp8  e8 % 35
  \mark \default
  e4  d-sharp4 r4  e16 _\p[  e16
  r16  e16] % 36
  e16[  e16 r16  e16 ]
  e16[  e16 r16  e16 ]
  e16[  e16 r16  e16 ]
  e16[  e16 r16  e16 ] % 37
  e16[  e16 r16  e16 ]  e8
  e,8 _\sf  e'8.  e16  e8
  e8 % 38
  e16 [\cresc  e16 r16  e16 ]
  e16[  e16 r16  e16 ]
  e16[  e16 r16  e16 ]
  e16[  e16 r16  e16 ] % 39
  e16[  e16 r16  e16 ]  e8
  e,8 _\sf  e'8.  e16  e8
  e8
  d16 [_\f  d16 r16  d16]
  d16[  d16 r16  d16 ]
  b16[ b16 r16  b16]
  b16[  b16 r16 b16] % 41
  c16[  c16 r16  c16 ]
  c16[  c16 r16  c16 ]
  c16[  c16 r16  c16 ]
  c16[  c16 r16  c16 ]  % 42
  c16 [  c16 r16  c16 ]
  c16 [  c16 r16  c16]
  f,16[  f16 r16  f16]
  f16[  f16 r16  f16]
  % 43
  b-flat16[  b-flat16 r16  b-flat16]
  b-flat16[ b-flat16 r16  b-flat16]
  b-flat8 r8
  g'8 _\f  g16  g16 % 44
  g4  g8  g8  b-flat4  \sf
  b-flat8  b-flat8 % 45
  b-flat4  a8 ( ^.  g8 ) ^.  f-sharp8
  a8  d,8  d'8 % 46
  b-flat8  g8  f-sharp8  d8
  g16[  g16 r16  g16 ]
  g16[  g16 r16  g16 ] % 47
  g16[  g16 r16  g16 ]  c,16[
  c16 r16  c16]
  a'16[  a16 r16  a16]
  a16[  a16 r16 a16] % 48
  a16[  a16 r16 a16]
  d,16[ d16 r16  d16]
  b-flat'16[ b-flat16 r16  b-flat16]
  b-flat16[  b-flat16 r16  b-flat16] % 49
  \mark \default
  b-flat,1 ~ _\ff
  b-flat2  g-sharp2 ~ _\sf % 51
  g-sharp1 % 52
  a1 ~ % 53
  a2..  a8 _\ff % 54
  d8.  d16  d8  d8  g,4
  g4 % 55
  a4  a'4  d4  a4 % 56
  b-flat4 \crescOD f-sharp4 \dim
  g4  g,4 % 57
  g4  g4  g-sharp4  _\p  g-sharp4 % 58
  a2  \extendLV #8 a2_\laissezVibrer  \fermata
  \bar "||"
  \pageBreak
}

CelloA = \BassA

