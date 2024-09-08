\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {39  \smallCaps "Arie"}}}
upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""
init = {\key a-flat \major \clef bass \time 4/4}


%---------------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Andante" 4=80
  a-flat,2 \p a-flat2 % 2
  a-flat2 a-flat2  % 3
  a-flat2 a-flat2 % 4
  f2 b-flat2 % 5
  e-flat2 a-flat2 % 6
  a-flat,2 a-flat2 \cresc % 7
  a-flat2\! a-flat2\dim % 8
  f2 \p b-flat2 % 9
  g2 c2
  f2 g4 \< b,4 -\! % 11
  c2 a-flat2 % 12
  b-flat2 b-flat2 % 13
  e-flat4 ( d4 ) c4 ( b-flat4 ) % 14
  a-flat1 % 15
  g2 a-flat2 % 16
  b-flat2 b-flat2 % 17
  e-flat2 e-flat2 \cresc
  % 18
  e-flat2\! e-flat2 -\p % 19
  e-flat2 g-flat2
  f2 g-flat2 % 21
  a-flat,2 a-flat2 \p % 22
  d-flat2 b-flat4 c4 % 23
  \crescOD d-flat2 \cresc c4
  d4\! % 24
  e4 c4 f4 f8 ( e-flat8 )
  % 25
  d-flat1 ~ -\sf % 26
  \crescOD d-flat1\dim % 27
  c2\! \p a-flat2 % 28
  a-flat2 a-flat2 % 29
  f2 b-flat2
  e-flat2 a-flat2 % 31
  d-flat,2 \crescOD c2 \cresc % 32
  f2\! c4 ( \p d-flat4 ) % 33
  e-flat4 a-flat4 e-flat4 e-flat4 % 34
  a-flat,2 f2 % 35
  d-flat'2 c2 \cresc % 36
  f2 \! c2\f % 37
  d-flat2 -\> b-flat4 ( \dim
  c8\! d-flat8 ) % 38
  e-flat4 ( \p a-flat4 ) e-flat4 ( -- e-flat4)
  -- % 39
  a-flat,2 a-flat2\dim
  a-flat2\! a-flat2 % 41
  a-flat2 a-flat2 % 42
  a-flat2 a-flat2 \fermata % 43
  a-flat2 -\p a-flat2 % 44
  a-flat2 a-flat2 \bar "|."
  \mark \markup{\fontsize #-2 \fermata}

}

\include "combine_and_reset.ly"

xxxixArie = \include "typeset.ly"
