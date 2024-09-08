Titel= \markup{\bold\huge {"Nr." {20  \smallCaps "Chor"}}}

init = {
  \clef bass
  \time 3/4
  \key e-flat \major
}

BassA = {
  \init
  \tempo "Allegro moderato ma con fuoco" 4=126
  e-flat,,2.\f ~
  e-flat2. % 3
  e-flat2. % 4
  e-flat2. % 5
  e-flat4 e-flat4 e-flat4 % 6
  <<
    \new Voice {\voiceOne e-flat'2 f8. ( ^- a-flat16 ) ^. g4 g4 ( a-flat4 )}
    \new Voice { e-flat2.\sf _~ e-flat  }
  >>% 8
  e-flat4 e-flat8. ( -- e-flat16 -.) e-flat8.
  ( -- e-flat16 )-. % 9
  e-flat4 e-flat4 d4
  c2 c4 % 11
  b-flat2 b-flat8. ( _- b-flat16 _.) % 12
  b-flat2. % 13
  b-flat2. % 14
  b-flat2. % 15
  b-flat4 b-flat4 _\sf b-flat8. ~ _- b-flat16 _.
  % 16
  b-flat4 b-flat4 _\sf b-flat8. ( _- b-flat16 )_.
  % 17
  b-flat4 b-flat4 _\sf b-flat8. ( _- b-flat16) _.
  % 18
  b-flat2. % 19
  b-flat4 b-flat4\ff a-flat8. ( _- g16 ) _.
  \mark \default
  g16 ( _\sf b-flat16 ) e-flat16 _. g16 _.
  b-flat16 ( a-flat16 ) g16 ^. f16
  ^. e-flat16 _. c16 _. b-flat16 _. a-flat16
  _. % 21
  g16 ( _\sf b-flat16 ) e-flat16 g16
  b-flat16 ( a-flat16 ) g16 f16
  e-flat16 c16 b-flat16 a-flat16 % 22
  g16 ( _\sf b-flat16 ) e-flat16 g16
  b-flat16 ( a-flat16 ) g16 f16
  e-flat16 c16 b-flat16 a-flat16 % 23
  g16 ( _\sf b-flat16 ) e-flat16 g16
  b-flat16 ( a-flat16 ) g16 f16
  e-flat16 c16 b-flat16 a-flat16 % 24
  g2 _\sf g4 ~ _\sf % 25
  g4 g2 _\sf % 26
  a4 a4 a4 % 27
  b-flat16 ( _\sf f'16 ) b-flat16
  d16 f16 ( e-flat16 ) d16 c16
  b-flat16 f16 d16 c16 % 28
  b-flat16 ( _\sf f'16 ) b-flat16
  d16 f16 ( e-flat16 ) d16 c16
  b-flat16 f16 d16 c16 % 29
  b-flat16 ( _\sf f'16 ) b-flat16
  d16 f16 ( e-flat16 ) d16 c16
  b-flat16 f16 d16 c16

  b-flat16 ( f'16 ) b-flat16 d16
  f16 ( e-flat16 ) d16 c16
  b-flat16 f16 d16 b-flat16 % 31
  a-flat16 ( b-flat16 ) d16 f16
  a-flat16 ( g16 ) f16 e-flat16 d16
  c16 b-flat16 a-flat16 % 32
  g8. ( _- g16 _.) a-flat'4 g8
  f8 % 33
  e-flat8. e-flat16 e-flat4 e-flat4 % 34
  e-flat2 e-flat4 % 35
  e-flat8. ( ^- e-flat16) ^. e-flat2 % 36
  f8. ( ^- f16 )^. f2
  g8. ( ^- g16) ^. g2 % 38
  c2 b-flat8. ( ^- a-flat16 ) ^. % 39
  g2 g8. ( ^- f16 ) ^.

  e-flat4 e-flat8. ( ^- e-flat16 )^. e-flat8.
  ( ^- d16 ) ^. % 41
  c2 c8. b-flat16 % 42
  a4 b-flat4 c4 % 43
  d4 e-flat4  f4 % 44
}
CelloA=\BassA
CelloB = {

  g16^\markup{\hspace #-3 Vcl.}
  b-flat16 c16
  e16 g16 f16 e16
  d16 c16 g16 e16
  f16 % 45
  g16 b-flat16 c-sharp16 e16
  g16 f16 e16 d16
  c-sharp16 b-flat16 g16 e16 % 46
  g16 b-flat16 c-sharp16 e16
  g16 e16 g16 e16
  c-sharp16 a16 c-sharp16 e16
  f d a d f e d e f d a f
  c16 f a c f8.^-( a,16^.) b-flat8.^-( c16^.)
}

BassB = {
  \clef bass
  g2 b-flat8.-- (  a16 )
  -. % 45
  g2 g4 % 46
  a,2 a8. ( _- a16 _.)
  a2 a8. ( _- a16 _.)
  a4.. a'16[ b-flat8.^-( c16^.)]
}

BassC = {

  d2 _\sf b-flat8. ( ^- a16 ) ^. % 49
  g4 g4 f4
  e4 e-flat4 d4 % 51
  c4 c4 f4 % 52
  \mark \default
  b-flat,16 _.\ff d16 f16 b-flat16
  d16 c16 b-flat16 a16
  b-flat16 f16 d16 c16 % 53
  b-flat8 r8 r4 r4

  a-flat16 -\ff b16 d16 f16 a-flat16
  g16 f16 e-flat16 d16 f16
  d16 b16
  % 2
  a-flat8 r8 r4 r4 % 3
  g4 -. -\ff g4 -. g4 -. % 4
  R2. % 5
  c16 -\ff e16 g16 c16
  e16 d16 c16 b16 c16
  g16 e16 d16 % 6
  c8 r8 r4 r4 % 7
  c16 e16 g16 c16 e16
  e16 c16 b16 c16 g16
  e16 d16
  % 8
  c8 r8 r4 r4 % 9
  c4 -\ff c4 c4
  c4 c4 r4
  \pageBreak% 11
  R2. * 4 % 15
  \mark \default
  r4 g-flat4. \ff g-flat8 % 16
  a-flat4 a-flat4 a-flat4 % 17
  a-flat4 a-flat4 a-flat4 % 18
  a-flat2. % 19
  d-flat2. ~
  d-flat2. ~
  % 21
  d-flat2. ~
  % 22
  d-flat2. % 23
  d-flat,2. ~ % 24
  d-flat8. d-flat16 d-flat4 d-flat4 % 25
  d-flat'2. ~
  % 26
  d-flat8. d-flat16 d-flat4 d-flat4 % 27
  d-flat4 d-flat4 r4 % 28
  r4 e,2 ~ \ff^\markup{\dynamic sf} % 29
  e4 f-sharp2 ~
  f-sharp4 f-sharp2 ~ % 31
  f-sharp4 g2 ~ % 32
  g4 g4. -\sf g8 % 33
  a4 a4 a4 % 34
  a4 a4 a4 % 35
  a2. % 36
  d2. ~ % 37
  d4 g,4. g8 % 38
  d'2. ~ % 39
  d4  g,2\sf ~
  g4 g2 ~ -\sf % 41
  g4 a-flat2 ~ % 42
  a-flat4 a-flat4. -\sf a-flat8 % 43
  b-flat4 -\ff b-flat4 b-flat4 % 44
  b-flat4 b-flat4 b-flat4 % 45
  b-flat2. % 46
  \mark \default
  e-flat2. ~ % 47
  e-flat2. % 48
  e-flat2. ~ % 49
  e-flat2.
  e-flat2 b-flat8. ~ -- b-flat16 -. % 51
  c2 g4 % 52
  a-flat8. a-flat16 a-flat4 a4 % 53
  b-flat2. % 54
  b-flat'2 g8. f16 % 55
  e2 e,4 % 56
  f4 g4 a-flat4 % 57
  b-flat4 c4 d4 % 58
  e-flat4 f4 g4 % 59
  a2.
}
CelloC = \BassC

CelloD={

  g'16^\markup{\hspace #-5 Vcl.} e-flat b-flat g e-flat f g a-flat b-flat c d e-flat
  f d b-flat f d e-flat f g a-flat b-flat c d
  e-flat e-flat b-flat g e-flat f g a-flat b-flat c d e-flat
  f d b-flat f d e-flat f g a-flat b-flat c d
  e g, b-flat e g f e f g e c g
  f a-flat c f a-flat g f c a-flat g f g
  a f' c a f c f a b-flat f b-flat c
  d16 d, f b-flat d e-flat f e-flat d c b-flat a-flat
  \mark \default
  g16\ff b-flat, e-flat g b-flat a-flat g f e-flat b-flat a-flat g
  f-sharp8.--( f-sharp16\staccato ) f-sharp 4 r4
  g16 b-flat e-flat g b-flat a-flat g f e-flat b-flat a-flat g
  f-sharp8.--( f-sharp16\staccato ) f-sharp 4 r4
  < b-flat' e-flat, g,>16 a-flat g f e-flat c b-flat g
  < b-flat' e-flat,> a-flat g f
  e-flat c b-flat g e-flat'' d c b-flat g e-flat b-flat g
}

BassD = {
  b-flat,2.
  b-flat2.
  b-flat2.
  b-flat2.
  b-flat2.
  b-flat2.
  b-flat2.
  a-flat'2 a-flat,4
  <g' g,>16\ff b-flat, e-flat g b-flat a-flat g f e-flat b-flat a-flat g
  f-sharp8.--( f-sharp16\staccato ) f-sharp 4 r4
  g16 b-flat e-flat g b-flat a-flat g f e-flat b-flat a-flat g
  f-sharp8.--( f-sharp16\staccato ) f-sharp 4 r4
  g2\sf g8.--( g16-.)
  g2\sf g8.--( g16-.)
}

BassE = {

  g2. ~ % 75
  g4  r4 r4% 76
  R2.
  % 77
  f2 -\ff g8. ( -- a16 ) -. % 78
  b-flat4 c4 d4 % 79
  e-flat2 f4
  g2 f4 % 81
  e4 f4 a-flat,4 % 82
  b-flat2 e-flat4 % 83
  a-flat,4 a-flat4 a-flat4 % 84
  b-flat2. % 85
  b-flat2. % 86
  e-flat,2. \fermata \bar "|."

}

CelloE = \BassE
