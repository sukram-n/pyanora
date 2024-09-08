%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

titel = \markup{\smallCaps Rezitativ}
Titel = \markup{\bold \huge\titel}

init = {
  \key d \minor
  \clef bass
  \time 4/4
}
\include "reset.ly"

BassA = {
  \init
  \tempo "L'istesso tempo"
  a,1\repeatTie g1~ g2 f-sharp2~f-sharp1~f-sharp1 g1~g1
  <<
    \new Voice{e'2}
    \new Voice {s4 s8 \cresc s8\!}
  >>
  f2~f1\>~f1\! e1\fermata
  \bar "||"
}
CelloA = \BassA

VocalsA = {
  \init
  \clef violin
  r4 ^\markup{ Chor Sopran } r8
  a'8 c-sharp8. c-sharp16  c-sharp8 d8 % 2
  f4 e4
  \clef violin r4 a,8^\markup{Chor Tenor}  a8 % 3
  c-sharp8. c-sharp16  c-sharp8 e8 d4 c
  \clef violin r4^\markup{ Chor Alt } r8
  d,8 f-sharp^\< a c\! a % 5
  f-sharp4 f-sharp8 g8 a4 d,8 c'8 b4

  \clef bass d,,8^\markup{Chor Bass}
  d  g g g a  b-flat2

  \clef violin   g''8^\markup{Chor Tenor} f e d c2

  a4.^\markup{Chor Alt} a8 g-sharp4 g-sharp4

  f'4^\sf^\markup{Chor Sopran} e8 d8 c4 c4 c8 c8 b a^\< d-sharp2^\sf ^\> e2\fermata\!
  \bar "||"
}
LyricsA = \lyricmode {
  Die Tie -- fe ist ver -- sie -- get!
  Und die Strö -- me sind  ver -- trock -- net!
  Dem Säug -- ling klebt die Zun -- ge am Gau -- men vor
  Durst! "... jun" -- gen Kin -- der hei -- schen Brot!
  "... Kin"  -- der hei -- schen Brot!
  "... da" ist Nie -- mand,
  und da ist Nie -- mand, der es ih -- nen bre -- che!
}
