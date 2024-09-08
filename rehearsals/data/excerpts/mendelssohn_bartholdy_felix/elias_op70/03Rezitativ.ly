toc_titel = \markup{\smallCaps "3 Rezitativ"}
Titel = \markup{\bold\huge{  "Nr." \toc_titel}}

init = { \key d \minor \time 4/4 \clef bass}
upperMusicInstrumentName = \VclKb

%-----------------------------------------------------------------------------


BassA = {
  \init
  \tempo "L'istesso tempo"
  f,1 \fp ~ f r4 f4 r4 e-flat4
  d2  _\sf e4 \rest b8 _\f d8 \rest % 2
  e4 \rest c8 _\f d8 \rest f,2 _\p % 3
  b-flat2 e-flat2 ~ % 4
  e-flat1 % 5
  g,1 % 6
  e'4 \rest a-flat,4 _\< a-flat4 a-flat4 -\! % 7
  a4\sf ~ a8 d8 \rest e4 \rest b-flat4 _\p
  \bar "||"
}
VocalsA={
  \init
  \clef violin
  r4_\markup{ Solo Tenor } r8 f8   c'8
  c8  d8  e8 % 2
  f4  c8  d8  b-flat4  c8
  g8 % 3
  b-flat8  a8 r16  a16  a16
  b-flat16  d8 ^\cresc
  c8\!  c16  c16  a16  f16

  f'8  d16  b-flat16  a-flat8
  a-flat16  b-flat16  a-flat8  g8 b8 \rest  g'16
  d16 % 2
  f16  e-flat16  e-flat8 b8 \rest  e-flat16
  e-flat16  e-flat16  a-flat,16  a-flat4  f'16
  e-flat16 % 3
  d4  c8  b-flat8  g'8.  e-flat16
  b-flat8  c8 % 4
  d-flat4 _.  d-flat8   d-flat8  f4
  e-flat8  d-flat8 % 5
  c8.   b-flat16  b-flat8  b-flat8
  e-flat4. _.  b-flat8 % 6
  d-flat4 _. _.  c4 c4 \rest  c4 % 7
  g-flat'4 ~  g-flat16  g-flat16   d16  e-flat16
  e-flat8  b-flat8 b4 \rest \bar "||"
}
LyricsA=\lyricmode {
  \set ignoreMelismata = ##t
  Zer -- rei -- sset eu -- re Her -- zen und nicht eu --  re Klei -- der!
  Um un -- srer Sün -- den Wil -- len hat E -- li -- as den Him -- mel ver -- schlo -- ssen
  durch das Wort des Herrn!
  So be -- keh -- ret euch zu dem Herrn, eu -- rem Gott,
  denn er ist gnä -- dig,  barm -- her -- zig, ge -- dul -- dig und von gro -- sser Gü -- te
  und reut ihn bald der Stra -- fe
}
