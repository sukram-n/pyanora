init = {
  \clef "bass"
  \time 3/4
  \key e-flat \major % 1
}

toc_titel = \markup{\smallCaps{4 Arie}}
Titel = \markup{\bold\huge {"Nr." \toc_titel}}
upperMusicInstrumentName=\VclKb

%------------------------------------------------------------------------

BassA= {
  \init
  \tempo "Andante con moto" 4=72
  e-flat,2 r4 % 2
  e-flat2 \tweak X-offset #-4 _\pp r4 % 3
  e-flat2 r4 % 4
  e-flat2 r4 % 5
  e-flat2 r4 % 6
  g,2  a-flat4 % 7
  b-flat2 r4 % 8
  b-flat8 r8  b-flat8 r8  b-flat8 r8 % 9
  b-flat8 r8  b-flat8 r8  d8 r8

  e-flat2 r4 % 11
  e-flat2 r4 % 12
  e-flat2 r4 % 13
  e-flat2 r4 % 14
  c4 (  d2 ) % 15
  g,2 e'4 \rest % 16
  b-flat'4 (  a4  g4 ) % 17
  f-sharp8 r8  g8 r8  c,8 r8 % 18
  f2 r4

}

CelloB = {
  b-flat,4  b-flat'4 (  a-flat4 )
  g8_\pp  g8  g8  g8  f8
  f8 % 21
  e-flat8  e-flat8  e-flat8  e-flat8  b8
  b8 % 22
  c8  c  c  c
  c8( d8)
  e-flat2. d4.
  d8(\< c' )\> c\!
  b-flat8\pp b-flat b-flat b-flat
  f-sharp8  f-sharp8 % 26
  g8[  g8  g8  g8 ]
  a,4(
  b-flat8)     b-flat8  b-flat8  b-flat8  b-flat8 b-flat
}
BassB ={
  b-flat,2 r4
  R2. * 2 r4 r4
  c8(  d8 ) % 23
  e-flat2. d4. r8 r4 R4*3 r4 r4
  a4 (
  b-flat8 )    b-flat8  b-flat8  b-flat8  b-flat8 b-flat

}

BassC = {
  b2.\cresc % 29
  c4\!  c8  c8 \cresc b-flat8\!  b-flat8
  a2 \sf r4 % 31
  d2 \p r4 % 32
  R2. % 33
  d2 r4 % 34
  R2. * 4 % 35
  \mark #1
  b-flat2. \sf \> % 36
  b-flat2 ( \p  e-flat4 ) % 37
  e-flat2 r4  % 38
  g,2  a-flat4 % 39
  b-flat2 r4
  R2. % 41
  r4 r4  e-flat4 \p % 42
  \crescOD d2( \dim  a-flat4) % 43
  g2 ( \<  a-flat4 ) \! \> % 44
  b-flat4\! r4 r4 ^\fermata % 45
  e-flat2 \p r4 % 46
  e-flat2. ~ % 47
  e-flat4  e-flat4 \pp  e-flat4 % 48
  e-flat2. ^\fermata \bar "|."

}

CelloC = \BassC
