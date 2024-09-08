\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {27  \smallCaps "Rezitativ"}}}

init = {\key  d \major \clef bass \time 4/4}

%--------------------------------------------------------------------------

VocalsA = {
  \init
  \clef violin
  f-sharp'4 ^\markup {Solo Tenor}
  c-sharp4. a8 a4~ | % 2
  a8 a16 a16 a8 b8
  c-sharp8 a8 g-sharp8 a8 |
}
VocalsB = {% 3
  g-sharp4 f-sharp4r8 f-sharp8 a8  c-sharp8 |
  f-sharp4 f-sharp8 f-sharp e2 |
  e8 a, d d d2 |
  c-sharp4 a8 a b2 |
  a2 r2 |
  R1  \bar "|."
}

LyricsA = \lyricmode {
  Sie -- he, er schläft un -- ter dem Wach -- hol -- der, in der
}
LyricsB = \lyricmode {
  Wü -- ste;
  a -- ber die En -- gel des Herrn la -- gern sich um die her, so ihn fürch -- ten.
}

CelloA = {
  \init
  \extendRT #4
  f-sharp,,1  _\repeatTie~|
  f-sharp|
}
BassA = {
  \init
  R1 | R1 |
}
BassB = {
  R1 |
  a,1\p~ |
  a~ |
  a~ |
  a~ |
  a2
  %_\markup{(obere Hälfte wenden)}
  r2 \bar "|."
}
CelloB = \BassB
%--------------------------------------------------------------------------

\include "combine_and_reset.ly"

xxviiRezitativ = \include "typeset.ly"
