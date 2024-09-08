\include "reset.ly"
Titel=\markup{\bold\huge {"Nr." {42  \smallCaps "Schlusschor"}}}

init = {\key  d \major \clef bass \time 4/4}

%--------------------------------------------------------------------------


BassA = {
  \init
  \tempo "Andante maestoso" 4=96
  g,16 \ff
  a16 b-flat16 c-sharp16
  d16 f-sharp16 g16 b-flat16
  d4 b-flat4 % 2
  g2 r2 % 3
  g,16  \ff a16 b-flat16 d16 e-flat16
  f-sharp16 g16 b-flat16 e-flat4
  b-flat8. ( -- g16 ) -. % 4
  e-flat2 r2 % 5
  a,16 c-sharp16 e16 g-sharp16
  a16 c-sharp16 e16 g-sharp,16
  a4 a,4 % 6
  b-flat4 b-flat2 d8. ( -- c16 ) -. % 7
  b-flat2 a2 % 8
  g-sharp8. ( -- g-sharp16) -. g-sharp4 g-sharp4
  g-sharp4 % 9
  a2
}
CelloA = \BassA
CelloB ={
  a4 g'4 ( \p
  f-sharp2 ) e4 c-sharp'4 % 11
  d2 a4 a,8. ^\markup{Vcl. & Kb.} ( -- a16 -.)
}
BassB = {
  a2 a1 a2. a8. --( a16 -.)
}
BassC = {
  d4 g4 f-sharp4 c'4 % 13
  b2 ( a4 ) a,8. ( -- a16 -.)
  % 14
  g4 c4 b4\cresc
  f'4\! % 15
  e2 d2 % 16
  c-sharp4 d4 g,2 \f % 17
  a1 \bar "||"
  \tempo "Allegro Doppio movimento" 2=96
  \time 2/2
  <d, \parenthesize d'>1 ~^\markup {\bold 1}
  <d \parenthesize d'>1 ~^\markup {\bold 2}
  <d \parenthesize d'>1 ~ ^\markup {\bold 3}
  <d \parenthesize d'>1 ~ ^\markup {\bold 4}
  <d \parenthesize d'>1 ~ ^\markup {\bold 5}
  <d \parenthesize d'>1 ~ ^\markup {\bold 6}
  <d \parenthesize d'>1 ~ ^\markup {\bold 7}
  <d \parenthesize d'>1 ~ ^\markup {\bold 8}
  <d \parenthesize d'>1 ~ ^\markup {\bold 9}
  <d \parenthesize d'>1 ~ ^\markup {\bold 10}
  <d \parenthesize d'>1 ^\markup {\bold 11}
  d'2 \f d4. ( -- d8 ) -.

  e2 ( d4 ) d4 % 31
  e4 d4 g4 f-sharp4 % 32
  b2 a4 d,4 \f % 33
  g2 g2 % 34
  g2 f-sharp2 % 35
  r4 e4 a2 % 36
  g-sharp4 a4 f-sharp4  e4 % 37
  e4 ( d2 ) c-sharp4 % 38
  b4 b'4 f-sharp4 g-sharp4 % 39
  a4 e4 a2
}

CelloD = {
  r4 c-sharp4 b4 a4 % 41
  g-sharp2 a2 % 42
  f-sharp1 % 43
}

BassD = {
  R1 * 3
}

BassE = {
  c-sharp,2 c-sharp4. ( --
  c-sharp8) -. % 44
  d2 ( c-sharp4 ) c-sharp4 % 45
  d4 c-sharp4 f-sharp4 e-sharp4 % 46
  a2 g-sharp4 c-sharp,4 % 47
  f-sharp2 f-sharp2 % 48
  f-sharp2 e2 ~ % 49
  e4 d2 c-sharp4
  b4 f-sharp'4 b4 a4 % 51
  g-sharp2 a2 ~ % 52
  a2 g-sharp4 e4 % 53
  a4 g-sharp4 c-sharp4 b4 ~ % 54
  b4 a2 g-sharp4 % 55

  \mark \default

  g-sharp2 f-sharp2 % 56
  e-sharp2 f-sharp2 ~ % 57
  f-sharp4 f-sharp4 d4 c-sharp4 % 58
  b1 ~ % 59
  b1
}
CelloF = {
  b'2 b4. _( _- b8 _) _. % 61
  c-sharp2 b2 % 62
  a-sharp2 a-sharp4. _( _- a-sharp8 _)_. % 63
  b1 % 64
}
BassF = {
  R1 *4
}

BassG= {
  d2 \f d4. ( --
  d8 )-. % 65
  e2 ( d4 ) d4 % 66
  e4 d4 g4 f-sharp4 % 67
  b4 a4 g2 ~ % 68
  g2 f2 % 69
  e2 \sf e4. ( -- e8 ) -.

  f2 ( e4 ) e4 % 71
  a4 g-sharp4 c4 b4 % 72
  a2 g2 % 73
  f-sharp2 \sf f-sharp4. ~ -- f-sharp8 -. % 74
  g2 ( f-sharp4 ) f-sharp4 % 75
  b4 a-sharp4 d4 c-sharp4 % 76
  b2 b,2 % 77
  \mark \default
}

CelloH ={
  a1 ~ ^\markup{\bold 1}% 78
  a1 ~ ^\markup{\bold 2}% 79
  a1 ~ ^\markup{\bold 3}
  a1 ~ ^\markup{\bold 4}% 78
  a1 ~ ^\markup{\bold 5}% 79
  a1 ~ ^\markup{\bold 6}
  a1 ~ ^\markup{\bold 7}% 78
  a1 ~ ^\markup{\bold 8}% 79
  a1 ^\markup{\bold 9}
  d-sharp'2^\markup{\hspace #-5 Vcl.} d-sharp4. ( -- d-sharp8 -.) e2 d c-sharp g' f-sharp g,,
}
BassH = {
  a1 ~ ^\markup{\bold 1}% 78
  a1 ~ ^\markup{\bold 2}% 79
  a1 ~ ^\markup{\bold 3}
  a1 ~ ^\markup{\bold 4}% 78
  a1 ~ ^\markup{\bold 5}% 79
  a1 ~ ^\markup{\bold 6}
  a1 ~ ^\markup{\bold 7}% 78
  a1 ~ ^\markup{\bold 8}% 79
  a1 ~ ^\markup{\bold 9}
  a1 ~^\markup{\bold 10}
  a1 ~^\markup{\bold 11}
  a1 ~^\markup{\bold 12}
  a2
  g
}

BassI = {
  f-sharp2\ff f-sharp4. -- ( f-sharp8-.) g2 f-sharp4 f-sharp g f-sharp b a

  d2 d4 f-sharp,4 % 94
  g4 f-sharp4 b4 a4 % 95
  d2 d4 d4 % 96
  e4 d4 g4 f-sharp4 % 97
  b2 b4 a4 % 98
  g-sharp2 a4 g4 % 99
  f-sharp2 g4 g4
  a1 % 101
  d,4 d8 d8 d4 d4
  % 102
  d1 ~ % 103
  d1 % 104
  \mark \default
  g,2 \ff g4. ( -- g8 )-. % 105
  c2 b4 b4 % 106
  c4 b4 e4 d4 % 107
  g2 g4 g4 % 108
  a4 g4 c4 b4 % 109
  e2 e2
  e,2 a4 g4 % 111
  f-sharp2 g4 g4 % 112
  a1 % 113
  d1 % 114
  g-sharp,1 % 115
  a1 % 116
  d-sharp,1 % 117
  e1 % 118
  a-sharp,1 % 119
  b1
  a1 % 121
  g1 % 122
  g'2 e2 ~ % 123
  e2 f-sharp2 % 124
  g2 b2 ~ % 125
  b2 a2 % 126
  a,1 % 127
  <d, \parenthesize d'>1 \fermata \bar ".."
}

\include "combine_and_reset.ly"

xliiSchlusschor = \include "typeset.ly"
