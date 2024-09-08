\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {34  \smallCaps "Chor"}}}
init = {\key  e \minor \clef bass \time 2/2 }


%--------------------------------------------------------------------------
BassA = {
  \init
  \tempo "Allegro molto" 2=100

  %\override MultiMeasureRest.color = #red
  e,16 \pp e16 e16
  e16 e16 e16 e16 e16
  e2 :16 % 2
  e2 :16 \cresc e2 :16 % 3
  e2 :16 e2 :16 % 4
  e2 :16 e2 :16
  % 5
  e2 :16 \ff e2 :16 % 6
  e4  r4 r2 % 7
  R1 R1\fermata R1\fermata

  <<
    \new Voice \with {
      \override MultiMeasureRest.transparent = ##t
    }
    {
      R1^\markup {\bold 1}
      R1^\markup {\bold 2}
      R1^\markup {\bold 3}
      R1^\markup {\bold 4}
      R1^\markup {\bold 5}
      R1^\markup {\bold 6}
      R1^\markup {\bold 7}
      R1^\markup {\bold 8}
      R1^\markup {\bold 9}
      R1^\markup {\bold 10}
    }
    \new Voice{
      \voiceTwo
      e2:16 \pp e2:16
      % 11

      e2 :16 e2 :16 % 13
      e2 :16 e2 :16 % 13
      e2 :16 e2 :16 % 14
      e2 :16 \cresc e2 :16 % 15
      e2 :16 e2 :16 % 16
      \mark \default
      e2:16 \ff e2 :16
      e2:16 e2 :16 % 18
      e2 :16 \dim e2\! :16 % 19
      e2 :16 e2 :16
    }
  >>

  d2 :16 \pp d2 :16 % 21
  d2 :16 d2 :16 % 22
  d2\cresc :16 d2 :16 % 22
  d2 :16 d2 :16 % 22
  d2\ff :16 d2 :16 % 22
  d2 :16 d2 :16 % 22
  g,2\dim :16 g2 :16 % 22
  g2 :16 g2 :16 % 22
  g2\p :16 g2\dim :16 % 22
  g2 :16 g2 :16 % 22
  g4\pp r4 r2\fermata
  \mark \default
  R1*5
}

CelloB = {
  d'4 :16 \pp c-sharp4 :16 d4 :16
  e-sharp4 :16 % 33
  f-sharp2 :16  \cresc
  b2\! :16 % 34
  b,2 :16 b2 :16 % 36
  b2 :16 b2 :16 % 36
  b2 :16\ff b2 :16 % 37
  g4  r4r2
  R1 R1\fermata R1\fermata
}
BassB = {
  b2\pp :16 b2 :16 % 42
  b2 :16 \cresc b2\! :16 % 44
  b2 :16 b2 :16 % 45
  b2 :16 b2 :16 % 46
  b2\ff :16 b2 :16 % 47
  b4 r r2
  R1 R1\fermata R1\fermata

}


BassC = {
  b2:16\pp b2:16
  b2:16 b2:16
  b2\cresc :16 b2\!:16
  b2:16 b2:16
  g-sharp2\sf :16 g-sharp2 :16
  g-sharp2 :16 g-sharp2 :16
  g-sharp2 :16 \dim g-sharp2\! :16
  g-sharp2 :16 g-sharp2 :16 % 49
  <<
    \new Voice \with {
      \override MultiMeasureRest.transparent = ##t
    }
    {
      R1^\markup {\bold 1}
      R1^\markup {\bold 2}
      R1^\markup {\bold 3}
      R1^\markup {\bold 4}
      R1^\markup {\bold 5}
      R1^\markup {\bold 6}
    }
    \new Voice{
      c2 :16 \p c2 :16\cresc
      c2 :16 c2 :16 % 51
      c2 :16 c2 :16 % 52
      c2 :16 c2 :16 % 52
      c2:16 \f c2 :16 % 54
      c2 :16 c2 :16 % 55
    }
  >>
  f,2 :16 \sf f2 :16 % 56
  f2 :16 f2 :16 % 57
  f2 :16 \dim f2 :16
  % 58
  f2 :16 f2 :16 % 59
  f-sharp2 :16 \p f-sharp2 :16 \dim

  f-sharp2 :16 f-sharp2 :16 % 61
  f-sharp4 \pp  r4f-sharp4  r4\fermata % 63
  \mark \default
  R1 * 5
  c'2 :16 \pp \cresc c2:16
  c2 :16 c2:16 % 65
  c2 :16 c2 :16 % 66
  c2:16 c2:16 % 67
  b-flat2:16\ff b-flat2:16
  b-flat8 r8 b-flat8 r8 b-flat8r8
  b-flat8 r8 % 69
  a16 \sf a16 a16 a16 a16
  a16 a16 a16 a2 :16
  a8 r8 a8 r8 a8r8
  a8 r8 % 71
  g'2 :16 \sf g2 :16 % 72
  g8 r8 g8 r8 g8 r8 g8 r8 % 73
  f2 :16 \sf f2:16 % 74
  f8 r8 f8 r8 f8 r8 f8 r8 % 75
  f2:16 \sf f2 :16 % 76
  e8 r8 e8 r8 e8 r8 e8 r8 % 77
  d2 :16 \sf d2 :16 % 78
  d8 r8 d8 r8 e8 r8 d8_\sempreFF  r8 % 79
  c2 :16 c2 :16
  c8 r8 b8 r8 a8 r8 g8  r8 % 81
  f-sharp2 :16 f-sharp2 :16 % 82
  f-sharp8  r8 f-sharp8  r8 b8 r8 b8 r8 % 83
  e8 r8 f-sharp8 r8 g8 r8 f-sharp8 r8 % 84
  e8 r8 d8 r8 c8 r8 b8 r8 % 85
  \mark \default
  a-sharp2 \sf a-sharp2 \sf % 86
  R1 % 87
  r2 b'4 \ff b8 b8 % 88
  a-sharp2 r2 % 89
  r2 b2
  a-sharp2 r2 % 91
  r2 b4 \ff b8 b8 % 92
  g-sharp2 g-sharp2 % 93
  a2 a2 % 94
  f-sharp2 _\sempreFF f-sharp2
  % 95
  d-sharp2 d2 % 96
  c-sharp2 c2 % 97
  b2 b-flat2 ~ % 98
  b-flat1 % 99
  a1 ~ \sf
  a1 ~ % 101
  a1 ~ % 102
  a2 a4 \ff a8 a8 % 103
  a1 ~ \sf % 104
  a1 ~ % 105
  a1 ~ % 106
  a1 ( \fermata \bar "||"
  \mark \default
  \key e \major g-sharp1 ) ~ \pp % 108
  g-sharp1 ~ % 109
  g-sharp1
  f-sharp1 % 111
  <<
    \new Voice \with {
      \override MultiMeasureRest.transparent = ##t
    }
    {
      R1^\markup {\bold 1}
      R1^\markup {\bold 2}
      R1^\markup {\bold 3}
      R1^\markup {\bold 4}
      R1^\markup {\bold 5}
      R1^\markup {\bold 6}
      R1^\markup {\bold 7}
      R1^\markup {\bold 8}
      s2
    }
    \new Voice{
      \voiceThree
      e1 ~
      e1 ~ % 2
      e1 ~ % 3
      e1 ~ % 4
      e1 ~ % 5
      e1 ~ % 6
      e1 ~ % 7
      e1 ~ % 8
      e2
    }
  >>
  r2 % 9
  R1*7 % 16
  e'1 \pp % 17
  b1 % 18
  c-sharp1 % 19
  a1
  b2 ( -. b2 -. % 21
  b2 -. b2 ) -. % 22
}

CelloD = {
  b'8 ( g-sharp8 f-sharp8 e8
  b'8\<  g-sharp8 f-sharp8 e8\!
  % 23
  c-sharp'8\> g-sharp8  f-sharp8  e8 \!
  b'8 g-sharp8 f-sharp8 e8) % 24
  e2 e2-.(\cresc
  d-sharp2\! -. d-sharp2 ) -. % 26
  c-sharp1 % 27
  f-sharp1 ~ % 28
  f-sharp2 f-sharp2 ( -. \< % 29
  e2 -. e2 ) -. \!
}
BassD ={
  e1~e1 ~ e2
  e2-.(\cresc
  d-sharp2\! -. d-sharp2 ) -. % 26
  c-sharp1 % 27
  f-sharp1 ~ % 28
  f-sharp2 f-sharp2 ( -. \< % 29
  e2 -. e2 ) -. \!
}

BassE = {
  a1 ~ \cresc % 31
  a1 ~ % 32
  a2
  a2 ( -. \pp g-sharp2-. g-sharp-.)% 33
  f-sharp-.( f-sharp-. f-sharp-. b,-.)
  e-. ( d-sharp-. c-sharp-. b-.)
  a\p( g-sharp f-sharp g-sharp)
  a1~a1 a2\cresc( g-sharp\! f-sharp g-sharp)
  a1~a1
  \mark \default
  g-sharp\pp~g-sharp
  a~a a2( g-sharp)
  f-sharp1
}
CelloF = {
  b'8 ( g-sharp8 f-sharp8 e8
  % 23
  c-sharp'8\< g-sharp8  f-sharp8  e8 \!
  d'\> b f-sharp e\!
  d' b f-sharp e)

  e1( f-sharp)
  b8 \cresc ( g-sharp8\! f-sharp8 e8
  % 23
  c-sharp'8\< g-sharp8  f-sharp8  e8 \!
  d'\> b f-sharp e\!
  d' b f-sharp e)
  a1 ( c-sharp) e,4 \pp r r2

}


BassF = {
  <<
    \new Voice \with {
      \override MultiMeasureRest.transparent = ##t
    }
    {
      R1^\markup {\bold 1}
      R1^\markup {\bold 2}
      R1^\markup {\bold 3}
      R1^\markup {\bold 4}
      R1^\markup {\bold 5}
      R1^\markup {\bold 6}
      R1^\markup {\bold 7}
      R1^\markup {\bold 8}
      s2
    }
    \new Voice{
      \voiceThree
      e1~
      e~
      e~
      e~
      e~
      e~
      e~
      e~
      e4\pp r r2
    }
  >>
}

BassG= {
  R1*3
  e1\pp\<~
  e1\>~
  e1\<~
  e1\>~
  e1\!~
  e1~
  e4 r4 r2 R1 R1\fermata\bar"|."
  \pageBreak
}

\include "combine_and_reset.ly"

xxxivChor = \include "typeset.ly"
