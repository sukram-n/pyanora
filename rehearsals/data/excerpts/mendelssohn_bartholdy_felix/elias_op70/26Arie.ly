\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {26  \smallCaps "Arie"}}}
init = {\key a  \major \clef bass \time 3/4}
mainInstrumentName = "Vcl."
additionalInstrumentName = "Kb."
%-------------------------------------------------------------


CelloA = {
  \init
  \tempo "Adagio" 4=66
  \time 3/4  r2. % 25
  c-sharp4 ( a4 \mf f-sharp4 ) % 26
  e-sharp2 e-sharp4 % 27
  f-sharp8 ( \cresc g-sharp8\!
  a8 b8 c-sharp8 d8 ) % 28
  d4 ( g-sharp,2 ) % 29
  c-sharp4 \p c-sharp4 \< c-sharp4 \!

  c-sharp4 ( \> b8 a8 g-sharp8 \!
  f-sharp8 ) % 31
  a2 ( g-sharp4 ) % 32
  f-sharp2. ~ % 33
  f-sharp8 r8 f-sharp,8 \pp r8 r8
  f-sharp8 % 34
  f-sharp8 r8 f-sharp8 r8 r8 f-sharp8 % 35
  f-sharp8 r8 f-sharp8 r8 r8
  f-sharp'8 \cresc % 36
  e8\! r8 d'2 \>  ( % 37
  c-sharp4 ) ( \p a4 g4 ) % 38
  f-sharp2 r4 % 39
  r4 c-sharp8 r8 b8 r8

  a8 r8 a8 r8 r4 % 41
  g-sharp'4 ( \< c-sharp4 \! \> b4 ) % 42
  a2\! r4 % 43
  d-sharp4 ( \sf g-sharp,4 f-sharp4 ) % 44
  e4 ( \p f-sharp4 b,4 ) % 45
  e2 ( e-sharp4 ) % 46
  f-sharp2 \< g-sharp8 ( e8 ) \! % 47
  a2 r4

  c-sharp,4 ( \p a4 f-sharp4 ) % 2
  e4. c-sharp''8 ( \> b8  a8\!
  % 3
  g-sharp8 f-sharp8 e8 ) c-sharp'8 (\>
  b8  a8 % 4
  g-sharp8  b8\! a8 ) a8 (
  \dim g-sharp8\! f-sharp8 ) % 5
  g-sharp8 \p r8 g-sharp8 r8 g-sharp8 r8 % 6
  g-sharp'4 ( \sf e4 \cresc c-sharp4\! ) % 7
  b-sharp2 ( \> b4 ) \! % 8
  a8 ( \dim f-sharp'8\!
  e8 d-sharp8 c-sharp8 b-sharp8 )
  % 9
  b-sharp4 ( c-sharp4 ) r4
}
BassA  = {
  \init
  \tempo "Adagio" 4=66
  f-sharp,,8 \p r8 f-sharp8 r8 r8 f-sharp8% 25
  f-sharp8  r8 f-sharp8 r8 r8 f-sharp8% 25
  f-sharp8  r8 f-sharp8 r8 r8 f-sharp8% 25
  f-sharp8  r8 f-sharp8 r8 r8 f-sharp'8\cresc% 25
  e8\! r8 e8 r8 r8 e8
  \p % 29
  a,8 r8 a8 r8 r8 a8

  d8 r8 d8 r8 r4 % 31
  r4 b8 r8 c-sharp8 r8 % 32
  f-sharp,8 r8 f-sharp8 r8 r8 f-sharp8 % 33
  f-sharp8 \pp r8 f-sharp8 r8 r8
  f-sharp8 % 34
  f-sharp8 r8 f-sharp8 r8 r8 f-sharp8
  % 35
  f-sharp8 r8 f-sharp8 r8 r8\cresc
  f-sharp'8\!  % 36
  e8 r8 e8 r8 r8 e8
  \p % 37
  a,8 r8 a8 r8 r8 a8 % 38
  d8 r8 d8 r8 r4 % 39
  r4 c-sharp8 r8 b8 r8

  a8 r8 a8 r8 r8 f-sharp'8 % 41
  c-sharp8 r8 c-sharp8 r8 r8 c-sharp8 % 42
  f-sharp8 r8 f-sharp8 \crescOD r8\cresc r8
  f-sharp8  % 43
  f-sharp8\! r8 f-sharp8 r8 r4 % 44
  R2.*4
  c-sharp'4 ( \p a4 f-sharp4 ) % 2
  e4. r8 r4
  R2. * 2 % 4
  %R2. % 5
  g-sharp8 \p r8 g-sharp8 r8 g-sharp8 r8 % 6
  c-sharp,8 r8
  c-sharp8\cresc r8\! r8 c-sharp8 % 7
  d-sharp8 r8 d-sharp8 r8 r8
  e-sharp8 % 8
  f-sharp8 \dim r8\! f-sharp8 r8 r8
  f-sharp8 % 9
  c-sharp8 r8 c-sharp8 r8 r4
}

BassB = {

  r8 b8 \p b2 :8 % 11
  a2. :8 % 12
  g2 g4 ( % 13
  f-sharp4 ) f-sharp4 \< f-sharp4 \! % 14
  c-sharp'2 \sf r4 % 15
  r8 d8 \p d2 :8 % 16
  c4 ( b4 f-sharp4 ) % 17
  g4. g8 g8 g8 % 18
  f-sharp2 :8 _\markup{\italic {poco a poco}}
  f-sharp'8 f-sharp8 % 19
  e-sharp2\cresc :16
  f-sharp4\! :16 % 21
  e-sharp2. :16
  e-sharp2. :16 \bar "||"
  % 23
  \tempo "      Molto Allegro vivace" 2=92
  \time 4/4
  e-sharp4 \ff c-sharp'4 a4 f-sharp4 % 24
  e-sharp2\sf c-sharp2 % 25
  f-sharp,4 r4  f-sharp'4
  \p r4 % 26
  g-sharp4 r4 e4 r4 % 27
  a4  r4 a,4 r4 % 28
  d2 r2 % 29
  r4 c-sharp'4\ff a4 f-sharp4

  e-sharp2 \sf c-sharp2 % 31
  f-sharp,4 r4 f-sharp'4 \p r4 % 32
  g-sharp4 r4 e4 r4 % 33
  a4 r4 a,4 r4 % 34
  d-sharp2 r2 % 35
  r4 b'4 \ff g-sharp4 e4 % 36
  d-sharp2 -> r2 % 37
  r4 b'4 -. \p g-sharp4 -. e4 -. % 38
  c-sharp4 r4 b4 r4 % 39
  r4 a-sharp4 -. c-sharp4 -. e4 -.

  d4 r4 c-sharp4 r4 % 41
  r4 b-sharp4 -. d-sharp4 -. f-sharp4 -. % 42
  e4 r4 d4 r4 % 43
  c-sharp4 r4 f-sharp4 r4 % 44
  b,4 r4 e4 r4 % 45
  r4 a4 \p f-sharp4 e4 % 46
  d-sharp2 \sf r2 % 47
  e4 \p r4 f4 r4 % 48
  d4 r4 e4 r4 % 49
  \mark \default
  a,8 r8 c-sharp'4\ff a4 f-sharp4

  e-sharp2 c-sharp2 % 51
  f-sharp,4 r4 f-sharp'4 \p r4 % 52
  g-sharp4 r4 e4 r4 % 53
  a8 r8 c-sharp4\f a4 f-sharp4 % 54
  e-sharp2 c-sharp2 % 55
  f-sharp,4 r4 f-sharp'4 \p r4 % 56
  d2 -> r2 % 57
  r4
}
CelloC = {
  c-sharp'4 a f-sharp
  d-sharp2
  \tweak Y-offset #0 r2
  \tweak Y-offset #0 r4
  c-sharp'4  a f-sharp
  d-sharp2
}
BassC = {
  c-sharp4
  c-sharp4 c-sharp4 % 58
  c-sharp2 r2 % 59
  r4 c-sharp4 \f c-sharp4 c-sharp4
  c-sharp2
}
BassD = {
  r2 r4
  c-sharp'4-. a4-.
  f-sharp4 -. % 62
  d1 ~ % 63
  d4 d4 d4 d4 % 64
  d1 ~ % 65
  d4 d4 \pp d4 d4 % 66
  c4 c4 c4 c4 % 67
  b4 b'4 ( g4 d4 ) % 68
  b4 b4 b4 b4 % 69
  c-sharp4 c-sharp'4 ( a4 e4 )
  c-sharp4 c-sharp4 \cresc
  c-sharp4 c-sharp4 % 71
  d-sharp4 d-sharp'4 ( b4 f-sharp4 ) % 72
  d-sharp4 d-sharp4 c-sharp4 c-sharp4 % 73
  b-sharp2 \ff a'2 \sf % 74
  f-sharp2 \sf d-sharp2 \sf \bar "||"
}

CelloE = {
  \tempo "Adagio" 4=66
  b-sharp4\sf
  \inLineOssia {
    a'4^\markup{\hspace #-3 Elias}
    g-sharp4. f-sharp8 e-sharp1
  }\lyricmode{
    Es ist ge -- nug.
  }{
    r4 r2 r4
    d'4\f c-sharp4.\sf\>( b8\! )
    b2. r4

    \bar "||"
  }
}

BassE = {
  \tempo "Adagio" 4=66
  b-sharp4\sf
  \inLineOssia {
    a'4^\markup{\hspace #-5 Elias}
    g-sharp4. f-sharp8
    e-sharp1
  } \lyricmode{
    Es ist ge -- nug.
  }{
    \tweak Y-offset #-4 r4 r2
    \tweak Y-offset #-4 R1
  }
  R1
  \bar "||"
}

CelloF = {
  \time 3/4
  c-sharp4\pp ( a f-sharp)
  e-sharp2 e-sharp4
  f-sharp8( g-sharp a b c-sharp d)
  d4( g-sharp,2 )
  c-sharp4 ( a f-sharp)
  e2.~ e4( a g) f-sharp2 r4
  r4 b,8\p r c-sharp r f-sharp4( e4. d8)
  c-sharp4 r r
  f-sharp (b4. a8) g-sharp4\cresc( b4.\! d8)
  c-sharp2 \dim r4 \!
  R2. c-sharp4(\pp a4. f-sharp8) f-sharp4( c-sharp4. a8) a4(
  \extendLV #16
  f-sharp2)\fermata\laissezVibrer
}


BassF = {
  \time 3/4
  f-sharp,8\pp r f-sharp r r f-sharp
  f-sharp8 r f-sharp r r f-sharp
  f-sharp8 r f-sharp r r f-sharp
  f-sharp8 r f-sharp r r f-sharp
  f-sharp'8 r f-sharp r r f-sharp
  e8 r e r r e
  a,8 r a r r a
  d8 r d r r4
  r4 b8\p r c-sharp r
  f-sharp, r f-sharp r r f-sharp

  f-sharp4 r4 r4
  f-sharp8 r f-sharp r r f-sharp
  f-sharp8\cresc r\! f-sharp r r f-sharp
  f-sharp4\p r r
  R2. *2
  f-sharp8\pp r f-sharp r r f-sharp
  f-sharp8 r f-sharp r r4\fermata
  \bar "|."
}

\include "combine_and_reset.ly"

xxviArie = \include "typeset.ly"
