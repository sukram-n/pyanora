\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {37  \smallCaps "Arioso"}}}

init = {\key f \major \clef bass \time 6/4}

%----------------------------------------------------------------------------


BassA = {
  \init
  \tempo "Andante sostenuto" 4=100
  f,4 ( -. \p  f4 -.
  f4 ) -. c4 ( -. c4 -. c4 ) -. % 2
  d4_\markup{\italic {(simile ?)}} d4 d4 a4 a4
  a4 % 3
  b-flat4 b-flat4 b-flat4 c4 c4
  c4 % 4
  d4 c4 b-flat4 a4 b-flat4 g4
  % 5
  f4 f'4 \p f4 c4 c4
  c4 % 6
  d4 d4 d4 a4 a4
  a4 % 7
  b-flat4 b-flat4 b-flat4 b-flat4 b-flat4
  b-flat4 % 8
  b-flat4 b-flat4 a4 g4 g4 c4
  % 9
  f,4 e4 f4  f4\< (-. g4 -.
  a4 ) \!-.
  b-flat4 b-flat4 b-flat4 a4 a4
  a4 % 11
  g4 \p g4 g4 g4 g4 g4
  % 12
  g-sharp4 g-sharp4 g-sharp4 g-sharp4 \cresc g-sharp4\! g-sharp4 % 13
  a4 b4 c4 d4 \dim e4\! f4 % 14
  e4 e4 e4 e4 e4
  e4 % 15
  a,2. a2. \p % 16
  b-flat2 ( a4 ) g2 ( c4 ) % 17
  f,4 f'4  f4 a,4  a4
  a4 % 18
  b-flat2 ( a4\cresc ) g2\! ( f4 ) % 19
  b-flat4 b-flat4\p b-flat4 b-flat4 b-flat4
  b-flat4
  b4 b4 \cresc
  b4\! b4 b4 b4 % 21
  c4 c4 c4 c-sharp4 c-sharp4
  c-sharp4 % 22
  d2 c4 b2. \dim
  r4\! c4 \p c4 c4 c4 c4
  % 24
  c2 r4 c2 r4 % 25
  c2\cresc r4\! c2 r4 % 26
  r4 f4 \p f4 c4 c4
  c4 % 27
  d4 d4 d4 a4 a4
  a4 % 28
  b-flat4 b-flat4 b-flat4 c4 c4
  c4 % 29
  d4 c4 b-flat4 a4 b-flat4
  g4
  c2 r4 c2. \p % 31
  f,4 f4 f4 f4 f4 f4 % 32
  f4 f4\< f4 f4 f4 f4
  \! % 33
  f4 f4 f4 f4 f4 f4 % 34
  f2. ~ \> f4 \! r4 r4 % 35
  f4 \pp f4 f4 f4 f4
  f4 % 36
  f1. \fermata \bar "|."
}

%---------------------------------------------------------------------------

\include "combine_and_reset.ly"

xxxviiArioso = \include "typeset.ly"
