init = {
  \time 4/4
  \clef bass
  \key g \major
}

toc_titel = \markup{\smallCaps {"9 Chor"}}
Titel = \markup{  \bold\huge {"Nr." \toc_titel}}
mainInstrumentName = \VclKb
additionalInstrumentName = ""

%------------------------------------------------------------------------------

CelloA = {
  \init

  \tempo "Allegro moderato" 4=96
  r16 d16 (
  g,16 a16 b16 d16
  g16 d16 ) b16 ( d16
  c16 b16 c16 a16
  d16 a16 ) % 2
  b16 ( d16 g,16 a16
  b16 d16 g16 d16 )
  b16 ( d16 c16 b16
  c16 a16 d16 a16 ) % 3
}
BassA = {
  \init
  \tempo "Allegro moderato" 4=96
  g,1\p g1
}

CelloB = {
  b'16 ( d16 g,16 a16
  b16 d16 g16 d16 )
  b16 (\pp d16 c16 b16
  c16 a16 d16 a16 )
  % 4


  %{      b16 ( d16 g,16 a16
      b16 d16 g16 d16 )
      b16 ( d16 c16 b16
      c16 a16 d16 a16 ) % 8
  %}
  b16 ( d16 g,16 a16
  b16 d16 g16 d16 ) ~
  d16 d16 ( b16 a16
  g16 f-sharp16 g16 a16 ) % 9
  g16 ( d16 g16 b16
  d16 f-sharp16 e16 d16 )
  g16( d b d) g,4 ~
  g4\< e'4 ~ e16\> ( g16
  a16 g16 f-sharp16 d16\!
  c16 d16 )
  b( d g, a b d g d)
  b( d c b c a d a)

  b16 ( d16 g,16 a16
  b16 d16 g16 d16 ) ~
  d16 d16 ( b16 a16
  g16 f-sharp16 g16 a16 ) % 9

  g( d g b d a
  f-sharp16 g16)  a(\cresc f-sharp\! e d ) b'16 ( g16
  e16 c-sharp'16 )
  d16 ( a16 f-sharp16 a16 )
  d,4 ~ d16 b'16 ( g16
  b16 ) e4 ~ % 11
  e16 f-sharp16 ( g16 f-sharp16
  g16 e16 d16 c-sharp16 )
  d16 ( a16 g16 f-sharp16
  g16 e16 a16 e16 ) % 12
  f-sharp16 ( a16 d,16 e16
  f-sharp16 a16 d16 a16 )
  f-sharp16 ( \cresc
  a16 \! g16 f-sharp16 g16
  e16 a16 e16 ) % 13
  f-sharp16 ( a16 d,16 e16
  f-sharp16 a16 d16 a16 ) ~
  a16\cresc (
  a16\! d16 e16 f-sharp16 d16
  b16 d16 ) % 14
  b16 ( d16 g,16 a16
  b16 d16 g16 d16 )
  b16 ( d16 c16 b16
  a16 f-sharp16 g16 e16 ) % 15
  d8 ( g16 b16 d16
  f-sharp16 e16 d16 ) g16 (
  \p d16 b16 d16 ) g,4 ~ % 16
  g4 % 17
  e'4~e16( g a g f-sharp d c d)
  <<
    b2 ~
    {s8 \cresc s8\! s4}
  >>
  b16\!
  g16 ( e16 f-sharp16 g16
  a16 b16 d16 ) % 18
  c-sharp4 ~ _\sf c-sharp16 ( e16 d16
  c-sharp16 ) b8 ( \dim g8\! e4 ) ~ % 19
  e16 e'16 ( a,16 b16
  c-sharp16 d16 e16 c-sharp16 )
  a16 (\p d,16 f-sharp16 a16 )
  d4 ~
  d16 ( b16 g16 b16 )
  e4 ~ e16 _\markup{
    \bold\small\italic {cresc.}
  } g16 ( e16 d16 c-sharp4 )
  ~ % 21
  c-sharp16 ( a-sharp16 f-sharp16 a-sharp16
  b16 d16 ) f-sharp8 ~ f-sharp16
  ( g16 f-sharp16 e16 d-sharp16
  e16 f-sharp16 e16 ) % 22
  d-sharp16 ( b16 c-sharp16 d-sharp16
  e16 b16 g16 d'16 )
  c-sharp16 (\p b16 a16 b16
  c-sharp16 a16 d16 a16 ) % 23
  e'4 ( a,2 ) a4 ~ % 24
  a8 a8 ( _\markup{ \bold\italic {cresc.} }
  d8 ) d8 d4 ( b4 ) ~ % 25
  b4 r4 r2 % 26
  r16 a16 (\p d,16 e16
  f-sharp16 a16 d16 a16 )
  f-sharp16 ( a16 g16 f-sharp16
  g16 e16 a16 e16 )
  \mark #1
  f-sharp16( a16 d,16 e16
  f-sharp16\cresc a16\! d16 a16 )
  f-sharp16 ( a16 d, e16
  f-sharp16 a16 d16 a16 )

  f-sharp16( a16 d,16 e16
  f-sharp16\f a16\! d16 a16 )
  f-sharp16 ( a16 d, e16
  f-sharp16 a16 d16 a16 )

  f-sharp16( b16 d16 b16 f-sharp'4\p) g( f-sharp)

  r16 f-sharp,(\cresc d\! e f-sharp b d b)
  f-sharp( b d, e f-sharp b d b)
  f-sharp16( b d, e f-sharp b d b )
  f-sharp(\f b d, e f b d b)
  e,( b' d b) e,4( f e~)
  e16 a( c, d e a c a )
  e\cresc ( a c, d e a c a)~
  a( c f, g a c f c)
  a( c f, g a c f c)\!
}

BassB = {
  \clef bass
   g1 ~ g2 g4( e')
  d4 ( c4) b2 c2 d2 g,1 ~g2 g4 ( e')
  <<
    {d1 ~}
    {s2 s8\cresc s8\! s4}
  >>
  d2 g,2
  a d, ~ d1 ~ d2
  <<
    {d'2}
    {s8\cresc s8\! s4}
  >>
  e2\! e4( a,)
  d ( c) b2\p c d
  d-sharp8(\cresc e\! f-sharp) f-sharp e2~
  e4 f-sharp
  <<
    {g2}
    {s8\dim s8\! s4}
  >>
  g2 f-sharp\p e4( g) a(\cresc c-sharp8)\! c-sharp c-sharp4( b8 a ) g2~g2 g4\p( e8 d)
  c-sharp4( d) a2 d
  <<
    g,~
    {
      s8\cresc s8\! s4
    }
  >>
  g4 r4 r2

  d'1\p~
  \mark \default
  d ~
  <<
    d~
    {s2\<s4\f s4}
  >>
  d4 d\p e f-sharp
  <<
    b,1 ~
    {s4\cresc s4\! s2}
  >>
  b2. a4\f g-sharp a\p d e a,2
  g\cresc
  f1
}

BassC = {
  f'2
  e d4 f g b
  \mark \default
  c2.\ff
  c,8.\tenuto( c16\staccato)   c8.\tenuto( c16\staccato) c4 r4 c   c8.\tenuto( c16\staccato) c4 r4
  c4 e8.\tenuto( e16\staccato) e4 e e f-sharp1\sf~f-sharp~f-sharp4 f-sharp,\f b d
}
CelloC = \BassC

CelloD = {
  f-sharp4^\markup{\hspace #-3 Vcl.} f-sharp
  b16(\> f-sharp d e f-sharp b d b)
  g( b\dim d,\! f-sharp g b d b~ )
  b d( g, a b d g d )
  b( g b c d e f-sharp d  )
  g(\p d b d ) g,4~
  g4 e' ~e16( g a g f-sharp d c d )
  b16( g e f-sharp g b e b )
  b16(\cresc d g, a b d g d )
  e,2 d
  \mark \default
  g4 c,\f e g c c c2\sf~c~c16( a d, e f-sharp a d a)
  b( d g, a b d g d c e c b a b c e )
  a,( c b a g f-sharp g d ) f-sharp( a d, e f-sharp a d a )
  b( d g, a b d g d)
  c(  d c b c b a g)
  f-sharp( g f-sharp g a f-sharp b a ) g2~
  g16( f-sharp\cresc g\! a b d g d e2~ )
  e16 g,( f-sharp\dim g\!  a c a f-sharp ) d'8 r8 r4
  R1
  r16 d16\p (
  g,16 a16 b16 d16
  g16 d16 ) b16 ( d16
  c16 b16 c16 a16
  d16 a16 ) % 2
  b16 ( d16 g,16 a16
  b16 d16 g16 d16 )
  b16 ( d16 g,16 a16
  b d g d)
  c16( e g, b c\dim e g f)
  e d c b c b a g
  f-sharp( e d e f-sharp g a b)
  c( b a b c a d a)
  b\pp( g d f-sharp g b g a b8) r8 r4
  R1 r1\fermata
}

BassD = {
  \clef bass
  \key g \major
  f-sharp4 f-sharp b2~\>
  <<
    b2
    {s8\dim s8\! s4}
  >>
  g2 g4 d\p b2 c d
  e f\cresc e d
  \mark \default
  g4 c,\f e g c c c2\sf~ c2~c\p b2 a4( c,)
  d4( g) c,2 b a b e\p d c~c b4\p( a) d2 r2 g,1\p~ g4 r
  g r g r g r g r g r g1\pp~g ~ g\fermata\bar "|."

}
