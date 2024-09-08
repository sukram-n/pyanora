\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {31  \smallCaps "Arie"}}}
upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""
init = {\key c \major \clef bass \time 4/4 }

%---------------------------------------------------------------------------------

CelloA = {
  \init
  \tempo "Andantino" 4=72
  c,2 c4 d8 ( f8 ) % 2
  e4._\semprePP e8 f4
  g8 ( a8 ) % 3
  b4 ( c8 ) b-flat,8 a2 % 4
  d4 ( c4 ) b4 (
  a4 ) % 5
  g4. r8 r4 g4 ( \p % 6
  c4 )r4 r4 g4 ( % 7
  c4 )
  r8  g-sharp8 (
  a4 ) b4 % 8
  e4. f,8( g4)
  g4 % 9
  c4.
  b8 a4 (\cresc b4\! )
  e8 ( b8 c8 ) f,8
  g2(
  c4) r4 r2 % 12
  R1
  r4 d4 ( \p g,4) r4 % 14
  R1 % 15
  b1 \p % 16
  b1 ~ % 17
  \mark \default
  b8 a'8 ( \> g8 f-sharp8 ) \!
  e8 \p r8 c8 r8
  g4  r8 a8 b8 r8 b8
  r8 % 2
  c2_\semprePP ~ c4 d8 ( f8 ) % 4
  e4. e8 f4 ( g8 a8 ) % 5
  b4 c8 b-flat8 a2 % 6
  d,4 r4 g,4 (\cresc
  c4\! ) % 7
  f4 r4 g2 \sf % 8
  a4 e8 ( \p f8 ) g4
  f4 % 9
  e8 e8 ( \cresc d8\! c8 )  b4 \sf ( c8
  g-sharp8 )

}

BassA = {
  \init
  \tempo "Andantino" 4=72
  c,2 \pp ~ c2 c1_\semprePP
  c4. b-flat8 a2
  d4 (  c4 ) b4 (
  a4 ) % 5
  g4. r8 r4 g4 ( \p % 6
  c4) r4 r4 g4 ( % 7
  c4 )
  r4 r2 r4 r8 f,8( g4) g4
  c4. r8 r2
  r4 r8 f,8
  g2 (
  c4) r4 r2 % 12
  R1
  r4 d4 ( \p g,4) r4 % 14
  R1 % 15
  b1 \p % 16
  b1 ~ % 17
  \mark \default
  b8 a'8 ( \> g8 f-sharp8 ) \!
  e8 \p r8 c8 r8
  g4  r8 a8 b8 r8 b8
  r8 % 2
  c4.\pp ( a8 ) b8( -.   r8 b8) -. r8

  c2_\semprePP ~c2
  c1~c4. b-flat8 a2 d4
  r4 g,4 (\cresc
  c4\! ) % 7
  f4 r4 g2 \sf % 8
  a4 e8 ( \p f8 ) g4
  f4 % 9
  e8 e8 ( \cresc d8\! c8 )  b4 \sf ( c8
  g-sharp8 )

  a4 e8 ( \p f8 ) g2 % 11
  c1 \pp % 12
  c1 ~ % 13
  c4 e4\cresc f2\! % 14
  f-sharp2 r2 % 15
  g,1\pp ^\markup{ \italic ritard.} % 16
  c2 \startTextSpan c4 c4 % 17
  c2. \stopTextSpan r4 \fermata \bar "|."
  \pageBreak
}

\include "combine_and_reset.ly"

xxxiArie = \include "typeset.ly"
