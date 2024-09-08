\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {22  \smallCaps "Chor"}}}

init = {
  \key g \major
  \time 4/4
  \clef bass
}

BassA = {
  \init
  \tempo "Allegro maestoso ma moderato" 4=112

  r2
}
CelloA = \BassA
CelloB ={
  <g g,>4 <g g,>8. <g g,>16 <g g,>4 <g g,>4 <g g,>4 <g g,>4 <g g,>2
}
BassB ={
  g,4\f g8. g16 g4 g4 g4 g4 g2
}
BassC = {
  g'4 g8. g16 % 4
  g4 f-sharp4 e4 e4 % 5
  d4 d8. d16 d2 % 6
  d4 d8. d16 d2 % 7
  d4 d8. d16 d2 % 8
  d4 d8. d16 a'4
  f-sharp8. d16 % 9
  b4 b4 c4 d4

  e4 e4 e4 f-sharp4 % 11
  g4 g4 g4 g4 % 12
  d1 ~ % 13
  d2 d4 d8. ~ ^- d16 ^. % 14
  d4 d4 c4 b4 % 15
  a2 c'4 c8. c16 % 16
  c4 b4 a4 g4 % 17
  f-sharp4 g4 f-sharp4 e4 % 18
  d-sharp2 d-sharp2 % 19
  e2 e2
  b2 r2
  R1  % 22
  \mark #1
  r2
}
CelloC = \BassC
CelloD = {
  <g' g,>4 <g g,>8. <g g,>16 <g g,>4 <g g,>4 <g g,>4 <g g,>4
}
BassD =  {
  g4\f g8. g16 g4 g4 g4 g4
}

BassE = {

  g4  a4 b4 c8. c16 % 25
  d4 d4  g2\sf % 26
  g4 b-flat4 a4. g8 % 27
  f-sharp4 c'4 b4. a8 % 28
  g2 e2 % 29
  a,2 _\sf b4. c8
  d4 f-sharp4 e4 d4 % 31
  g4 g4 a4. b8 % 32
  c1 % 33
  d,2 d4. d8 % 34
  \tempo "Più animato" 4=138
  g,2  r4 g'4\f % 35
  f-sharp,2 _\sf r4 f-sharp'4 % 36
  e,2 _\sf r4 g'4 % 37
  a,2 r4 a'4 % 38
  a,4 a'4 g4 f-sharp4 % 39
  e4 a,4 g4 f-sharp4
  e4 r4 r4 g'4\f % 41
  c-sharp,4 r4 r4 e4 % 42
  f-sharp,4 f-sharp4 g-sharp4 a-sharp4 % 43
  b4 c-sharp4 d4 f-sharp4 % 44
  b4 r8 b,8 b'4 b4 % 45
  b4 a8. ( ^- g16 ) ^. f-sharp4
  e4 % 46
  d-sharp4 d-sharp8. ( ^- d-sharp16 ^.)
  e4 f-sharp4 % 47
  g4 d-sharp8. ( ^- d-sharp16 ) ^. e4
  f-sharp4 % 48
  g4 g,4 r4 e'4 % 49
  c-sharp4 _. d4 e4 c-sharp4

  f-sharp4 f-sharp,4 r4 f-sharp'4 % 51
  f-sharp,4 f-sharp'8. e16 d4
  c-sharp4 % 52
  b4 b'8. a16 g-sharp4
  f-sharp4 % 53
  e-sharp4 e-sharp8. c-sharp16 d-sharp4
  e-sharp4 % 54
  f-sharp4 f-sharp,4 r4 f-sharp'4 % 55
  g4 g,4 r4 g4 % 56
  g'4 f-sharp8. e16 d4
  c-sharp4 % 57
  b2 c-sharp2 ~ % 58
  c-sharp4 c-sharp'8. b16 a4
  g-sharp4 % 59
  f-sharp4 d'8. d16 c-sharp4
  b4
  a4 a,4 r4 a4 % 61
  a'4 a8. g16 f-sharp4
  e4 % 62
  \mark \default
  d4 d,4 r4 d'4 % 63
  e4 e,4 r4 f-sharp'4 % 64
  g4 g,4 r4 g-sharp'4 % 65
  a4 a,4 r4 a-sharp'4 % 66
  b4 b,4 r4 c'4 % 67
  c-sharp4 c-sharp,4 r4 c-sharp'4 % 68
  d4 d,4 r4 d'4 % 69
  e4 e,4 r4 f-sharp4\f

  d-sharp2 e2 % 71
  a,2. a4 % 72
  b4 b8. b16 d-sharp4 b % 73
  e4 e8. e16 g4
  e4 % 74
  b'4 b,4 r2 % 75
  r4 r8 c8 c'4 c4 % 76
  c4 b8. a16 b4
  d-sharp,4 % 77
  e4 e8. e16 g4
  e4 % 78
  b'4 b,4 r2 % 79
  r2 b'4\f b8. b16

  b4 b,4 r2 % 81
  r2 b4\f b8. b16 % 82
  b2
  <<
    \new Voice \with {
      fontSize = #-3
      \turnOnGrey
    }{
      \voiceOne
      b'4^\markup{\hspace #-3 Corno} b8. b16% 57
      \once \override TextSpanner.bound-details.left.text = \markup{\fontsize #3 \italic "ritard."}

      b1~\startTextSpan
      \override TextSpanner.bound-details.left.text = ""
      b4 r4
      s2
      s4 s4 s4 s4\stopTextSpan
      s2
    }
    \new Voice{
      \voiceFour
      \tweak Y-offset #-3 r2
      \tweak Y-offset #-4 R1
      \tweak Y-offset #-3 r2
      b,2\f a1\sf  ^~ \bar "||"
      \tempo "Tempo I" 4=112
      a2
    }
  >>
}
CelloE = \BassE

CelloF = {
  <g' g,>4 <g g,>8.
  <g g,>16 <g g,>4 <g g,>4 <g g,>4 <g g,>4
  <g g,>2 <g g,>4 <g g,>8. <g g,>16
}
BassF = {
  g4\ff g8. g16 g4 g4 g4 g4
  g2 g4 g8. g16
}

BassG = {
  g4  g g g g2\sf b\sf d\sf g-sharp,\sf a\sf c\sf e a-sharp, b d f-sharp
  f-sharp,4 f-sharp8. f-sharp16 g2. c4 d2 d2
  \mark \default
  g,4 a b c d f g-sharp g-sharp, a b c d e g a-sharp a-sharp, b c-sharp d e f-sharp c-sharp f-sharp, f-sharp8. f-sharp16 g2.
  c4 d2 d e r2 r2 e4\ff e8. e16 d2. r4
  r2 d4 d8. d16 c-sharp2. r4 r2 c-sharp' d a b f-sharp g g, c a d1 d1 g,\fermata \bar "|."
}

\include "combine_and_reset.ly"


xxiiChor = \include "typeset.ly"
