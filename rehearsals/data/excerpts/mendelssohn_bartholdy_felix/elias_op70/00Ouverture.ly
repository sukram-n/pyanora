titel = \markup{\smallCaps "Ouverture"}
Titel = \markup{\bold\huge\titel }
additionalInstrumentName = ""
mainInstrumentName = \VclKb

init = {
  \time 4/4
  \key d \minor
  \clef bass
  \partial 8
}

BassA =  {
  \init

  \tempo "Moderato." 4=92

  a,8 (
  _\pp  % 1
  b-flat4 ) r8  a8 (  b-flat4 ) r8
  a8 ( % 2
  b-flat8  g8 )  c-sharp8 (  d16
  e16 )  e8 (  d8 ) r16
  d16 (  e16  f16 ) % 3
  f8 (  g,8 ) r16  d'16 (
  e16  f16 )  f8 (  a,8 ) r16  d16 (  e16  f16 ) % 4
  f8 (  e8  d8  c-sharp8 )
  d8 (  c8  b-flat8  a8 ) % 5
  g-sharp8  d'8 (  g-sharp,4 ) r8  d'8
  (  g-sharp,4 ) % 6
  r8  d'8 (  e8  d8 )  c4
  a'8 (  g8 ) % 7
  f-sharp4 (  f4 )  e4 (  d-sharp4 ) % 8
  e4 r8  d8 (  c-sharp4 )  d4 % 9
  g,4 r8  d'8 (  g,4 ) r8
  d'8 (
  g,8  b-flat8 )  a4  d4 r8
  d8 % 11
  g4  g,4  a4  b-flat4 % 12
  a4 r4 r8  d8 (  g,8  a8
  ) % 13
  b4 r8  a8 (  b4 ) r8  a8 (
  % 14
  g-sharp8  f'8 )  e4 r8  e8 (
  f8  e8 ) % 15
  d4 r8  d8 (  a4 ) r8  a8
  ( % 16
  e4 ) r8  d'8 (  c8  b8 )
  a8 (  g8 ) % 17
  \crescOD f4.\cresc  f'8\! (
  e8  d8  c8 )  c8 ( \< % 18
  d4 ) \! r8 c8  \<  (  d4 \! ) r8
  c8 ( % 19
  d8 _\p  b-flat8 )  e8 (  f16
  g16 )  g8 (  f8 ) r16
  f16 (  g16  a16 )
  \crescOD a8 ( \cresc
  b-flat,8 ) r16  f'16 (  g16  a16 )
  a8 (  c,8 ) r16  f16 (
  g16  a16 ) % 21
  a8 (  g8  f8  e8 )
  f8 (  a,8  b-flat8  b8 ) % 22
  c4.  \cresc   c-sharp8\! (
  d8  f8  e8 )  b-flat'8 ( % 23
  a4 ) r8  b-flat8 (  a4 ) r8
  c,8 % 24
  f4 (  e4 ) ~  e8  c'8 (
  a8  g8 ) % 25
  \crescOD f-sharp4 ( \cresc
  f4 )  e8  a8 (  f8  e8 ) % 26
  d8  d8 (  e4 ) r8  c-sharp'8\dim  (
  d4\! ) % 27
  r4 r8  e,8 ( \<  f-sharp8 ) \!
  c'8 (  b8  a8 ) % 28
  g-sharp4 r8  e8 \dim
  a8\! (  g8  f8  e8 ) % 29
  d4. \p  e8 (  a,4 ) r8 \crescOD g-sharp8 \cresc
  (
  a4 ) r8  g-sharp8  a4 r8  a8
  ( % 31
  b-flat8  g8 )  c-sharp8  d16
  e16  e8 (  d8 )  g8 ( ^.
  b-flat8 ) ^. % 32
  d8  d8  g,8  b-flat8
  d,8  d8  g,8  b-flat8 % 33
  d,4 r4 r16  \! g16 _\markup{\italic\large {sempre cresc.} }  a16  b16
  c16  c16  b16  a16 % 34
  b16  b16  c16  d16  e-flat16
  e-flat16  d16  c16  g'16  g16
  a16  b16  c16  c16
  d16  e-flat16 % 35
  b16  b16  c16  d16
  f16  f16  e16  d16
  e8  e8  b4 _\sf
  r8  c8  e,4 _\sf r8  f8
  e4 _\sf % 37
  r8  f8 _\sf  a,4 r8  b-flat8 _\f
  b-flat'4~ % 38
  b-flat8  b-flat,8  b-flat'4.  b-flat,8
  b-flat'4 ~ % 39
  b-flat8  b-flat,8 r16  a16\f  b16
  c-sharp16  d16  d16  e16
  f16  g16  g16  f16
  e16
  d8 ^.  d8 ^. r16  e16
  f-sharp16  g-sharp16  a16  a16
  b16  c16  d16  d16
  c16  b16 % 41
  a8 ^.  a8 ^. r4 r4 r8
  c8 % 42
  b4 _\sf r8  c8  b4 _\sf r8  c8 % 43
  b8  d-sharp8  a8  g16
  f-sharp16  f-sharp8  g8 r16
  g16  f-sharp16  e16 % 44
  e8  d'8 r16  g-sharp,16
  f-sharp16  e16  e8  c'8 r16  g16  f-sharp16  e16 % 45
  e8  f-sharp8  g8  a8
  g8  a8  b8  c8 % 46
  \mark \default
  d8  d,8  c4 r8  d c4  % 47
  r8  d8  d8  e16  f16
  f8  e8 r8  f8 % 48
  e4.  e8  f4.  f8 % 49
  g2 ~  g8  f8  e8
  a16\f  g16
  f-sharp16  a16  c16  c16
  c16  b-flat16  a16  g16
  f-sharp16  a16  c16  c16
  c16  b-flat16  a16  g16 % 51
  f-sharp16  g16  a16  d,16
  e-flat16  c16  d16  e-flat16  f-sharp,16
  f-sharp16  g16  a16  b-flat16  c16
  d16  e-flat16 % 52
  f16  d16  b16  g16  a16
  b16  c16  d16 % 53
  e16  d16  c16  b16  c16
  d16  e16  f16  % 54
  g16  e16  c-sharp16  a16  b16
  c-sharp16  d16  e16  f16  e16
  d16  c-sharp16  d16  d16
  e16  f16 % 55
  f-sharp16  d16  e16  f-sharp16
  g8  f8  e8  c8
  f8  e8 % 56
  d-sharp16  b16  c-sharp16  d-sharp16  e8
  d8  c-sharp8  a8  d8  c8 % 57
  b4.  b8  b-flat4. d'8\ff
  % Ende 1. Seite
  c-sharp4 r8 d8 c-sharp4 r8
  d8 % 2
  c-sharp8 _\sf e8 g,8 f16
  e16 e8 f8 r16 b-flat,16
  a16  g16
  % 3
  g8 g'8 r16 c,16 b-flat16
  a16 a8 a'8 r16 d,16
  c16 b-flat16 % 4
  b-flat8 b8 c8 c-sharp8 d8
  e8 d8 e8 % 5
  f8 g-flat8 f8 f-sharp8
  g4 g-sharp4 % 6

}

CelloA = \BassA

CelloB =
{
  a,8 a'8 b-flat4 \sf r8
  a b-flat4 \sf
  r8 a8 b8 g-sharp8 c-sharp8
  d16 e16
  e-flat8_\piuF c8 % 8
  r8 d8 a8 c8 b8
  d16 g16 g8 c-sharp,8 % 9
  d4 \sf r8 e8 f4 \sf r8 f-sharp8
  g4 r8 g-sharp8 a4 r8
  a,,8 \ff

}

BassB =
{
  \clef bass
  a,2\sf a2 _\sf % 7
  a2
  <<
    \new Voice{a2}
    \new Voice{s4 s4_\piuF}
  >> a2 a2
  a4 a4 a4 a4
  a4 a4 a4 a8 a8  _\ff
}

BassC = {
  b-flat4 r8 a8 b-flat4 r8
  a8 % 12
  b-flat8 g8 c-sharp8 d16
  e16 e8 d8 r16 d16
  e16 f16 % 13
  f8 g,8 r16 d'16 e16
  f16 f8 a,8 r16 d16
  e16 f16 % 14
  f8 g-sharp,8 r16 d'16 e16
  f16 f8 a,8 r16 d16
  e16 f16 % 15
  f8 b,8 r8 b8 _\ff b8 r8 r8 b8 % 16
  c-sharp8 r8 r8 c-sharp8  c-sharp8 r8
  r8 c-sharp8 % 17
  c-sharp8 r8 r4
  r2
  R1*4
  \bar "||"
  \pageBreak
}

CellB = \BassB
