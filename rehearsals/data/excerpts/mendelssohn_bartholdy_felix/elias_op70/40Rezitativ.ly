\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {40  \smallCaps "Rezitativ"}}}

init = {\key  c \major \clef bass \time 4/4 \partial 16}

%-------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Andante sostenuto" 4=69
  r16
  R1 * 10
}

CelloB ={
  r2
  \clef bass  c2^\pp~
  c1~c1
  \tempo "Rezitativo"
  c1 f-sharp,
  g1 % 12
  e1
}
BassB = {
  \inLineOssia  {
    \voiceOne
    \once \override Staff.Clef.color=\mygrey
    \clef violin
    c'4 b-flat b-flat8 c d b-flat
  }\lyricmode {
    Kin  -- dern und das Herz der
  }{
    \voiceFour
    R1
  }
}
BassC = {\clef bass e,,1
  r4 r8.
  \tempo "Tempo"
  f16 \p
  f2 % 14
  r1 % 15
  r4 r8. f16 f2 % 16
  r4 r8. g16 \f g2 % 17
  % 18
}
CelloD = {
  R1
  a2\pp (  d2 ) % 19
  a2 r2\fermata
  \bar "|."
}
BassD = {
  R1 *2 r1\fermata
  \bar "|."
}


sVocalsA = {
  \time 4/4
  \partial 16
  \clef violin
  r16 R1*5
  c'4^\markup{\hspace #-3 Solo Sopran}  c8 c8 e4 e8 e8
  f4 c8 c8 a-flat4. a-flat8
  g2 r8 g g g
  c4. c8 e-flat4 e-flat8 e-flat e-flat4 d2 a8 c8
  c4 b-flat b-flat8 c d b-flat
  g'4 e8 d c4 g
}

sLyricsA = \lyricmode {
  kom -- me der gros -- se und
  schreck -- li -- che Tag d-flat Herrn: er soll das
  Herz der Vä  -- ter be --keh --  ren zu den
  Kin  -- dern
  und das Herz der
  Kin --  der zu ih -- ren
}


%------------------------------------------------------------------------------
\include "combine_and_reset.ly"

xxxxRezitativ = \include "typeset.ly"
