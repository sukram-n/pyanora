\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {30 \smallCaps "Rezitativ"}}}

upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""

init = {\key c \major \clef bass \time 4/4 }

%--------------------------------------------------------

VocalsA = {
  \init
  \clef violin
  r8 d16^\markup{ Solo Alt } d16
  g8. g16 g8 d8 r8 d8
  d8. d16
  d8 e8 f8 f8 g8 d8 % 3
  e4 r8 e16 e16 e8 e16
  e16 e8 e8 % 4
  a8. a16 a8 a8 g2
  d8 d8 e8 f8 g4 f4 % 6
  e2 e4. \clef "bass" e,8^\markup{\hspace #-2 Elias} % 7
  d'8. d16 d4 g-sharp,8 a16
  b16 b8 e,8 % 8
  R1*2
  r4 r8
  \tempo "Recitativo"
  e8 a8 a8
  g-sharp8 a8 % 11

  c8. c16
  b8 c8 % 32
  b8. a16 a4 % 33
  R1 R1 r2
  d2~d8 f, f g a a16 d d8 a8
  r2 r4
  a4 a a8. a16 b2
  r2 r4 f-sharp8 g8 % 26
  a4 b8 c8 b8. a16 a8
  g8 % 27
  r2 r8 b8 g8 a8 % 28
  b8. b16 b8 b8 e8.
  b16 a8 g-sharp8 % 29
  r2 r4
  g-sharp8 a
  b b e, d' c4
  r4 r8 a c4 c8. c16 b8 c8 b a
  r4 r4
  a4
  c4. c8 b a
  r4 r4
  a8 a g4 f-sharp
  e   d-sharp
  r4
  b'8 b a g f-sharp4 e
  r4 r4
  e'4. e,8 e f-sharp g4. e8 c'4 b
  r8 e,8
  e f-sharp g4. e8 e4 d-sharp
  r2
}

LyricsA = \lyricmode {
  Ste -- he auf, E -- li -- as,
  denn du hast ei -- nen gros -- sen Weg vor dir.
  Vier -- zig Ta -- ge und vier -- zig Näch -- te sollst du geh‘n
  bis an den Berg Got -- tes Ho -- reb. O Herr,
  ich ar -- bei -- te
  ver -- geb -- lich, und brin -- ge mei -- ne
  Kraft um -- sonst und un -- nütz zu.
  Ach, dass du den Him -- mel zer -- ris -- sest
  und füh -- rest her -- ab!
  Dass die Ber -- ge vor dir zer -- flös -- sen!
  Dass dei -- ne Fein -- de vor dir zit -- tern müss -- ten
  durch die Wun -- der, die du tust!
  Wa -- rum läs -- sest du sie ir -- ren
  von dei -- nen We -- gen,
  und ihr Herz ver -- sto -- cken,
  dass sie dich nicht fürch -- ten?
  O, dass mei -- ne See -- le stür -- be!
  Dass mei -- ne See -- le stür -- be!
}

BassA = {
  \init
  g,1 ~ \p
  g1 % 3
  g-sharp4.
  \tempo "tempo Adagio"
  r8
  a'4 ( \p g4 )
  f2 c2 % 5
  <<
    \new Voice{ d1 e4 ( a4 ) }
    \new Voice{ s2 \< s4 \> s8 s16 s32 s32\! s4 s4 }
  >>
  % 6
  e2 ~ % 7
  \tempo "Recitativo"
  e4 r4 r2 % 8
  \tempo "Allego vivace" 2=92
  r4 e4 \p \cresc
  c4\! a4 % 9
  g-sharp1^\accent
  \after 4. \tempo Recitativo
  a2
  r2
  f2\accent
  % 11
  r2 % 19
  \tempo "a tempo"
  r4 a'4 f4\cresc d4\!
  c-sharp1\accent % 21
  d2
  r2 % 22
  \tempo "Recitativo"
  R1 % 23
  \tempo \markup{\left-column {Allegro \vspace #-0.25 moderato}} 4=100
  d8\ff f16 a16 b-flat16 ( a16 ) f16
  d16 d'4
  \tempo "Recitativo"
  r4 % 24
  R1 % 25
  d-sharp,8 \ff f-sharp16 a16 b16 (
  a16 ) f-sharp16 d-sharp16 d-sharp'4

  r4 % 26

  R1
  e,8 \ff g16 b16 c16 (
  b16 ) g16 e16
  e'4
  r4
  % 28
  R1
  g-sharp,8 \ff b16 d16 e16 (
  d16 ) b16 g-sharp16 g-sharp4
  r4 % 36
  r2 r4
  a4 -> \ff % 37
  f4 ->
  r4
  r2
  % 38
  r4
  f4 -> e4 ->
  r4 % 39
  r2
  r4
  e4 ->
  d-sharp4
  r4
  r2
  r4
  d-sharp ->
  g4 ->
  r4 % 48
  r2
  r4
  g4 -> \ff % 49
  c4 ->
  r4
  r2
  r2
  r4
  b,4\dim
  c4\!
  r4
  r2 % 52
  r2
  b2 \fermata \p \bar "||"
}


\include "combine_and_reset.ly"

xxxRezitativ = \include "typeset.ly"
