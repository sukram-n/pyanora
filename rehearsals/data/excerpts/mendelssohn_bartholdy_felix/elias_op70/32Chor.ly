\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {32  \smallCaps "Chor"}}}

init = {\key f \major \clef bass \time 4/4}

%---------------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Andante sostenuto" 4=66

  \clef "bass" \time 4/4 \key f \major % 1
  f,4 \p
  g4 \< a4 f4 \! % 2
  b-flat,4 \> c4 f,2 \! % 4
  R1*2
  f'4 \cresc c4 a4
  a4 % 5
  b-flat4 c4 d2 \f % 7
  R1*2
  f4 ( \p g4 ) a4\cresc ( c4\! ) % 8
  b-flat2 a2 % 9
  g1 \f
}
CelloA = \BassA
CelloB ={
  a4\dim^\markup{\hspace #-3 Vcl.} ( b4\! ) c4 ( e4 ) % 11
  d2 a2 % 12
}
BassB = {
  R1 *2
}
BassC = {
  d4  d d\cresc b-flat\! % 13
  e-flat4 d8 ( c8 ) b-flat2 ~ % 14
  b-flat4 a4 g4 g'4 ~ % 15
  g4 ( \f f4 ) e4 ( c-sharp4 ) % 16
  d4 f4 g4 \dim
  a4\! % 17
  d,2 r2 % 18
  e2 \p e2\cresc % 19
  e4\! c4 f4 e8 d8

  c2 d4 \f d4 % 21
  e2 e2 \dim % 22
  a,4 \p a4 a4 \cresc f4\! % 23
  b-flat4 b-flat8 b-flat8 b-flat'2 ~ \sf % 24
  b-flat4 a8 ( g8 ) a4
  f4 % 25
  b-flat,4 c4 d2 % 26
  d4 \f f4 b-flat4 d4 % 27
  c2 b-flat2 ~ % 28
  b-flat2 \p b-flat,2 \dim % 29
  a4 b-flat4 c4 e4
  f4 g4 a4 c4 % 31
  b-flat2 \p a2
  R1 * 2 % 33
  r2 c,2 \pp % 34
  f,1 \fermata
  \bar "|."
}
CelloC = \BassC

\include "combine_and_reset.ly"

xxxiiChor = \include "typeset.ly"
