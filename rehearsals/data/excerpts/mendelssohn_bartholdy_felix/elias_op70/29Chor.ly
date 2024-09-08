\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {29  \smallCaps "Chor"}}}

upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""
init = {\key d \major \clef bass \time 4/4}

%---------------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Allegro moderato" 4=126
  d,4 \p  r4
  d4 r4  % 9
  d4 r4 d4 r4
  d4 r4 d4 r4 % 11
  d4 r4 a4 r4 % 12
  d4 r4 d4 r4 % 13
  d4 r4 d4 r4 % 14
  d4 r4 d4 r4 % 15
  d4 r4 a4 r4 % 16
  d4 \< r4 b4 r4 \! % 17
  g-sharp4 \> r4 a4 \! r4 % 18
  g-sharp4 r4 f-sharp'4 r4 % 19
  e4\cresc r4\! f-sharp4 r4

  e4 r4 r2 % 21
  a,4 \cresc r4\! a4
  r4 % 22
  g2 g'4 ( \dim
  f-sharp8 \! e8 ) % 23
  d4 \p r4 a4 r4 % 24
  a4 \dim r4\! a4 r4 % 25
  a4 r4 a4 r4 % 26
  \mark \default
  d4 r4 d4 \cresc r4\! % 27
  c-sharp4 r4 b4 r4 % 28
  f-sharp4 r4 f-sharp4 r4 % 29
}
CelloA = \BassA
CelloB = {
  c-sharp'4 ( d-sharp8 e-sharp8 ) f-sharp4 (
  g-sharp8 a8 )
  b2 ( a4 g-sharp4 ) % 31
  f-sharp8 f-sharp8\cresc ( g-sharp8\! a8 ) b2 ~ % 32
  b4 ( a4 ) c-sharp,4 (  d-sharp4 )
}
BassB = {
  c-sharp'4 r c-sharp r c-sharp r c-sharp r f-sharp r r2
  r2 c-sharp4
  \cresc( d-sharp\!)
}
BassC = {
  % 33
  e-sharp4 ( \< f-sharp8 g-sharp8 ) \! a2
  % 34
  a4 ( g-sharp2 ) f-sharp4 % 35
  e-sharp2\cresc e2\! ~ % 36
  e4 e4 ( d4 c-sharp4 ) % 37
  b2 r2 % 38
  r2 b4 \f c-sharp4 % 39
  d4 e8 f-sharp8 g2

  g4 ( f-sharp2 ) e4 % 41
  d2 d-sharp2 \sf % 42
  e4 e4 g-sharp4 f-sharp4 % 43
  e2 e-sharp2 \sf % 44
  f-sharp2 f-sharp4 \f g-sharp4 % 45
  a4 b8 c-sharp8 \sf d2 % 46
  d4 ( c-sharp2 ) b4 % 47
  a4 \f a4 e-sharp4 f-sharp4 % 48
  c-sharp2 r2 % 49
  c-sharp4 \dim c-sharp4\! c-sharp4
  c-sharp4
  c-sharp2 r2 % 51
  f-sharp4 \p r4 b,4 r4 % 52
  e4 r4 a,4 r4 % 53
  a4 r4 a4 r4 % 54
  \mark \default
  d4 r4 r2 % 55
  d4 r4 b4 r4 % 56
  e4 r4 a,2 ~ % 57
  a4 r4 a4 r4 % 58
  a1 ~ \cresc % 59
  a2.\! a4
  d4 d4 (
  g4 \dim f-sharp4\! ) % 61
  e4 r4 f-sharp4 r4 % 62
  r4 b,4 ( e4 d4 ) % 63
  c-sharp4 \p r4 d4 r4 % 64
  g,4 r4 r2 % 65
  a1 % 66
  d1 ~ \f % 67
  d1 ~ % 68
  d4 d4 (
  g4\dim f-sharp4\! ) % 69
  e2 f-sharp2
  r4 b,4 ( e4 \dim
  d4\! ) % 71
  c-sharp4 \p r4 d4 r4 % 72
  g,4 r4 r2 % 73
  a1 \p % 74
  d4 r4 r2 % 75
  d4 r4 d4 r4 % 76
  \mark \default
  d4 r4 r2 % 77
  d4 r4 d4 \dim r4 % 78
  d4 \pp r4
  %_\markup{(untere Hälfte wenden)}
  r2
  R1 * 5
  d4 \pp r4 r2 % 81
  d4 r4 d4 r4 % 82
  d1 \fermata \bar "|."
}

\include "combine_and_reset.ly"

xxixChor = \include "typeset.ly"
