\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {24 \smallCaps "Chor"}}}

init = {
  \key a \minor \clef bass \time 4/4
}


BassA = {
  \init
  \tempo "Allegro moderato" 4=100
  a,16 \sf a16 a16 a16
  a4:16  a2 :16
  \sf % 2
  a2 :16 \sf a2 :16 \sf % 3
  a2:16\ff a2 :16 % 4
  a16 c16 a16 b16 c16
  a16 b16 c16 f,4 \sf f'8
  f16 f16 % 5
  e8 e8 r8 c8 f4 \sf
  f8 ( -. f8 -.) % 6
  e16 \ff e16 d16 e16
  f16 d16 e16 f16 e16
  e16 d16 e16 f16 d16
  e16 f16 % 7
  e16 e16 d16 e16 f16
  d16 e16 f16 e8 d8
  c8 b8 % 8
  a16 c16 b16 c16 d16
  b16 c16 d16 c16 c16 b16
  c16 d16 b16 c16 d16 % 9
  c16 c16 b16 c16 d16
  b16 c16 d16 c8 c8 c8
  c8
  b16 b'16 a16 b16 c16
  a16 b16 c16 b16 b16
  a16 b16 c16 a16 b16
  c16 % 11
  b4 r8 a8 g4 r8
  f-sharp8 % 12
  g4 g-sharp4 g-sharp4 ~ g-sharp16
  g-sharp16 g-sharp16 g-sharp16 % 13
  a4 a4 d-sharp4 ~ d-sharp16
  b16 b16 b16 % 14
  e4 e4 g-sharp,4 r4 % 15
  r16 e16 e16 e16 c'16\sf
  c,16 c16 c'16 b16 \sf
  b,16 b16 b'16 a16\sf
  a,16 a16 a'16 % 16
  g4 ~ g16 e16 e16 e16
  a-sharp4 ~ a-sharp16 a-sharp16 a-sharp16
  a-sharp16 % 17
  b4 ~ b16 b16 b16 b16
  c4\sf :16 c4\sf :16 % 18
  \mark \default
  b16\f b,16 b16 b16 b4
  :16 a2 \sf % 19
  g2 f-sharp2 _\sempreF

  e16 e16 e16 e16 e4:16   f'2 % 21
  e2 d2 % 22
  a16 a16 a16 a16 a4:16   d2 % 23
  b2 a2 % 24
  a-flat2 g2 % 25
  c2 \f g-sharp2 % 26
  a2:16 \sf  a2 :16 \sf % 27
  a2 :16 \sf a2\sf :16 % 28
  a2\ff :16 a2 :16 % 29
  a8 r8 d8 r8 d'8\sf -.
  c8 -. b8 -. a8 -.
  g-sharp4:16
  a4 :16 d8 -. c8 -. b8 -.
  a8 -. % 31

  g-sharp8 r8 g8 r8 f-sharp8 r8 f8 r8 % 32
  e8 r8 f8 r8 d8 r8
  e8 r8 % 33
  a,2 _\sempreF a2 % 34
  a4 a4 g4 f4 % 35
  e2\sf:16 e2 :16 \sf % 36
  e2:16 e2 :16 % 37
  r4 e8 \ff r8 r4 e8 r8
  % 38
  r4 e8 r8 e8 r8 e8 r8 % 39
}
CelloA = \BassA

BassB = {
  a2:16  \sf a2 :16
  a2 :16 ^> \crescOD a2 :16 ^> \dim % 41
  a2 :16 ^> a2 :16 ^> % 42
}
CelloB = \BassB

CelloC = {
  b2 :16\p b2 :16
}
BassC = {
  a2 :16 a2 :16
}
BassD = {
  % 43
  \crescOD b2:16 \dim b2 :16 % 44
  a8. \pp a16 a8 a8 a2:8_\markup{\center-align{\hspace #0.5 ....}}
  a8. a16 a8 a8 a2:8_\markup{\center-align{\hspace #0.5 ....}}
  a8 %_#(cutLine 140)
  %_\markup{\with-color #white \center-column{| | |  |}}
  r8
  \fermata \bar "|."
}
CelloD = \BassD
%----------------------------------------------------------------
\include "combine_and_reset.ly"

xxivChor = \include "typeset.ly"
