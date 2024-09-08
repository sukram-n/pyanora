\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {41  \smallCaps "Chor und Quartett"}}}
init = {\key d \major \clef bass \time 4/4 \partial 16}

%------------------------------------------------------------------


CelloA = {
  \init
  \tempo "Andante con moto" 4=88

  r16
  R1*7 % 3
  r16 d,16 ( \p f-sharp16 d16
  a'16  f-sharp16 e16 d16 )
  c2 % 4
  b2 d2 % 5
  r16 c16 ( e16 c16 a'16
  e16 d16 c16 ) c2 % 6
  r16 c16 (\cresc
  e-flat16\! c16 a'16 e-flat16
  d16 c16 ) c2 % 7
  r16 b-flat16 ( d16 b-flat16 g'16
  d16 c16 b-flat16 ) b-flat2 % 8
  a16 ( \p d16 a16 d16 f-sharp16
  d16 a'8 ) ~ a16 d,16\cresc ( a16\! d16
  f-sharp16 d16 a'8 ) ~ % 9
  a16 d,16 ( a16 d16
  f16 d16 a'8 ) ~ a16 d,16 (
  a16 d16 e16 d16 a'8
  )(
  a16) e16 ( a,16 e'16
  a16 e16 c-sharp'8 ) ~ c-sharp16
  e,16 ( a,16 e'16 a16
  e16 c-sharp'8 ) % 11
  r16 d,16 ( a16 d16 ) f16 (
  d16 b'8 ) ~ b16 d,16 (
  a16 d16 ) f16 ( d16
  b'8 ) % 12
  r16 e,16 ( a,16 e'16 ) g16 (
  e16 a8 ) ~ a16 e16 (
  a,16 e'16 ) g16 ( e16
  a8 ) ( % 13
  a16 ) \f f-sharp16 ( a,16 f-sharp'16
  ) a16 ( f-sharp16 d'8 ) ~ d16
  f-sharp,16 ( a,16 f-sharp'16 ) a16 (
  f-sharp16 d'8 ) % 14
  a,16 (\cresc b16\!
  ) d16 ( g-sharp16 ) a,16 ( b16 )
  d16 ( g-sharp16 ) a,16 ( c-sharp16 )
  e16 ( a16 ) a,16 ( c-sharp16 )
  e16 ( a16 ) % 15
  a,16 ( d16 ) f-sharp16 a16 ~
  a16 ( a,16 ) d16 ( f-sharp16 )
  a,16 ( d16 ) f-sharp16 ( a16 )
  a,16 ( e'16 ) g16 ( a16 )

  a,16 ( \cresc f'16\! )
  a16 ( d16 ) a,16 ( f-sharp'16 )
  a16 ( d16 ) a,16 ( g'16 )
  b16 ( d16 ) a,16 ( g-sharp'16 )
  b16 ( d16 ) % 2
  a,16 ( e'16 ) a8 ~ a16
  e'16 ( d16 e16 ) a,16 (
  e'16 c-sharp16 e16 ) a,16 (
  c-sharp16 e16 a,16 ) % 3
  g16 ( c-sharp16 e16 g,16
  g16 ) ( c-sharp16 e16 g,16 )
  f-sharp16 ( a16 d16 f-sharp16 )
  e,16 ( g16 a16 c-sharp16 )
}

BassA = {
  \init
  \tempo "Andante con moto" 4=88
  r16 % 3
  R1 * 7
  d,2 \p d2 % 4
  d2 d2 % 5
  c2 c2 % 6
  \crescOD c2\cresc c2\! % 7
  b-flat2 b-flat2 % 8
  a2 \p \crescOD a2 \cresc % 9
  a2\! a2
  a2 a2 % 11
  a2 a2 % 12
  a2 a2 % 13
  a2 \f a2 % 14
  \crescOD a4\cresc a4\!
  a4 a4 % 15
  a4 a4 a4 a4

  a4 \cresc a4 a4
  a4 % 2
  a4 a4 a4 a4 % 3
  g4 g4 f-sharp4 e4\! % 4
  \mark \default
}

BassB = {
  d'4\ff d8. ( --
  d16 -.) d8. ( -- d16 -.)
  d8. (
  -- d16) -. % 5
  d4 d4 d4 d4 % 6
  d4 d8. d16 d8. d16
  d8. d16 % 7
  d4 d4 d4 d8. d16 % 8
  a4 a4 r8. a16 \f a8. ( --
  a16) % 9
  g2 r8. g16 g8. g16

  f-sharp4 f-sharp4 r8. f-sharp'16 f-sharp8.
  ( -- f-sharp16 )-. % 11
  e4. e8 a4. a8 % 12
  d4 d4 c-sharp4 b4 % 13
  c-sharp,4 c-sharp4 c-sharp4 c-sharp4 % 14
  \mark \default
  f-sharp,4. f-sharp8 _\sempreF f-sharp4.
  f-sharp8  % 15
  f-sharp4. f-sharp8 f-sharp4. f-sharp8 % 16
  f-sharp4. f-sharp8 f-sharp4. f-sharp8 % 17
  f-sharp4 a4 b4 c-sharp4 % 18
  d4. d8 d4 c-sharp8. c-sharp16
  % 19
  c-sharp4 b8. b16 b4 a-sharp4

  b4. b8 b4. b8 % 21
  b4. b8 b4 a8. a16 % 22
  a4 g-sharp8. g-sharp16 g-sharp4. g-sharp8
  % 23
  g-sharp4. g-sharp'8 g-sharp4 f-sharp8.
  f-sharp16 % 24
  f-sharp4 e8. e16 e4
  d-sharp4 % 25
  d-sharp4 c-sharp4 c-sharp4 c-sharp4 % 26
  g-sharp2 r2 % 27
  r4 r8. c-sharp16\f ^\markup{\italic {tenuto}} c-sharp4 r4 % 28
  r4 r8. c-sharp16 c-sharp4 r4 % 29
  r4 r8. d16 d4 r4

  r4 r8. g16 g4 r4 % 31
  r4 r8. g-sharp16 \ff g-sharp4 r4 % 32
  \mark \default
  a,1 \p % 33
  d2  r2
  \pageBreak
  R1 * 3
  r2 d2 \p % 36
  d2 d2 % 37
  d1 \ff % 38
  f-sharp,2 \p
  << {g2 a1\fermata}\\
     {s4\< s4 s4\> s4\! s2}
  >>
  \bar "||"
  \break
}

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

init = {\key b-flat \major \clef bass \partial 8}

BassC = {
  % 41
  \init
  \tempo "Andante sostenuto" 4=76
  r8
  r2 f2 \p % 43
  b-flat1 ~ % 44
  b-flat2 f2 % 45
  f4. r8 r2 % 46
  f2 \pp b-flat2 ~ % 47
  b-flat1 % 48
  f2. r4 % 49
  r2 r4 c'4 \p
  g'2 c,4. r8 % 51
  r2 r4 b-flat'4 ( \p % 52
  a4 e-flat4 ) d2 % 53
  e-flat1 % 54
  f2 b-flat,4. r8 % 55
  R1 % 56
  g2 \p d'2 % 57
  b-flat'2 a2 % 58
  g2 d2 ~ % 59
  d2 a2 ~
  \crescOD a2. \cresc a'4 % 61
  d,4 \p d'2 ( c4 ) % 62
  b2 ( c2 ) % 64
  R1*3
  r2 r4 c,4 \p % 65
  b-flat2 a8 ( b-flat8 c8 c-sharp8 ) % 66
  d4 \< a'4 g4. \! f8 % 67
  e4 ( f-sharp4 \p g4. ) d8 % 68
  g4 ( \< f4 e4 d4 ) \! % 69
  c4 r4 r2
  r4 c4 \p f,2 ~ % 71
  f4 \< f'2( e-flat4 ) \! % 72
  b2\p\< c2 \! % 73
}
CelloD = {
  b-flat2 ( a2 ) % 74
  g2 ( f4 ) a
}
BassD = {
  R1 r2 r4 a\p
}

BassE = {
  b-flat4 ( d4 ) f2 % 76
  b-flat,1 ~ % 77
  b-flat2 c4 b-flat4 % 78
  f2 r2 % 79
  r4 c'4 g'2
  c2 r2 % 81
  r4 b-flat4 ( a4 e-flat4 ) % 82
  d2 e-flat2 ~ % 83
  e-flat2 f2 ( % 84
  g4 ) \p r4 r2
  R1*3

  b-flat,1 ~ \p % 87
  b-flat2 f2 \dim % 88
  b-flat2\! b-flat4 b-flat4 % 89
  b-flat1 \fermata \bar "|."
}

%-------------------------------------------------------------------------
\include "combine_and_reset.ly"

xliChorUndQuartett = \include "typeset.ly"
