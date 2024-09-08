init = {
  \key c \minor \time 2/2
  \clef bass
}

toc_titel = \markup{\smallCaps{5 Chor}}
Titel = \markup{\bold\huge {"Nr." \toc_titel}}

BassA =  {
  \init
  \tempo "Allegro vivace" 2=96
  r2 c,4\f c8 d e-flat2 g4. g8 c2 r2
  R1 % 5
  r4  c4  c4  c4 % 6
  c2  g2 % 7
  a-flat2 r2 % 8
  r2  g2 % 9
  f2 r2
  r2  b-flat,2  % 11
  a-flat4 _\f  a-flat'4  a-flat4  a-flat4 % 12
  g2  g2 % 13
  r4  g,4  g4  g4 % 14
  g2  g2
  R1*2
  r2  c-sharp2 \ff ^\markup{\dynamic sf}
  c-sharp2  c-sharp4  c-sharp4 % 18
  c'2 _\sf  f-sharp,2 _\sf % 19
  g2 _\sf _\sf  c-sharp,2
  c2 _\sf  f-sharp,2 % 21

  g2. _\sf  g4 % 22
  g'2  d2  % 23
  c'2:16 _\ff c2 :16 % 24
  b-flat4 _\sempreF  b-flat4
  b-flat4  a8  g8 % 25
  f-sharp2  f-sharp4  g8  a8 % 26
  b-flat4  g,4  g'2 _\sf % 27
  r4  g,4  g'2 _\sf % 28
  r4  g,4 _\f  g4  a8  b-flat8 % 29
  c4  a4  c4  b-flat8  a8
  \mark \default
  d2  c2 % 31
  b2  b2 % 32
  c4  c4  c'2 % 33
  r4  c,4  c'2 % 34
  r4  c,4 _\f  c4  d8  e-flat8 % 35
  f4  d4  f4  e-flat8  d8
  % 36
  g2  c,2 % 37
  r4  a-flat'4  g8  f8 s4 % 38
  e2  e2
  R1*2
  \break
  r2 r4  f4 _\f % 2
  b-flat2 _\sf  e,2 _\sf % 3
  f2 _\sf  b,2 _\sf % 4
  c2 _\sf  f-sharp,2\sf ~
  f-sharp2  f-sharp2 % 6
  g4  g4  g'2 _\sf % 7
  r4  g,4  g'2 _\sf
}

CelloB = {
  r4 d'4 d4 c8 b8
  a4  c4  a4  b8  c8
  d2  g,2 % 11
}
BassB = {
  r4 g,4_\markup{\hspace #-5 Kb.}  g'2 _\sf % 9
  r4  g,4 g'2 _\sf % 9
  r4  g,4 g'2 _\sf % 9
}

BassC ={

  r2 r4  g4 \ff % 12
  \mark #2
  e-flat'2 \sf  a,2 \sf % 13
  b-flat2 \sf  e,2 \sf % 14
  f2 \sf  b,2 ~ \sf % 15
  b4  b4 \ff  b4  c8 d
  % 16
  e-flat4 c4 e-flat4  d8 c8 % 17
  f2  f2  % 18
  e-flat4 _\ff  c'4  c4  c8
  c8 % 19
  c4  c,4  c4  c8  c8

  c4  c'4  c4  c8  c8
  % 21
  c4  c,4  c4  c8  c8 % 22
  c4  c'4  c4  c8  c8
  % 23
  c4  c,4  c4  c8  c8
  % 24
  c4  c4  c4  c4 % 25
  c2  c2 % 26
  r2\fermata    \tempo "Grave" 2=58
  % 27
  c'2\f  b-flat2  a-flat2 % 28
  a-flat2  g2 % 29
  f2\fermata  b-flat,2
  e-flat2  c2 % 31
  d2  d2 % 32
  g,1 ^\fermata % 33
  c2 \p  c2 % 34
  b-flat1  % 35
  e-flat2  d2 % 36
  c2 \cresc  d2\! % 37
  d1 % 38
  g1\fermata % 39
  g2 \cresc  c,2\!

  f2  a-flat2 % 41
  g2  f2 % 42
  g2 \sf  a-flat2 % 43
  f2  f2 % 44
  e-flat1 % 45
  a-flat,1 \dim  % 46
  d-flat2\!  f2 % 47
  <<
    f,1
    {s4\< s4 s4 \> s4\!}
  >>
  \bar "||"
  \mark #3
  \key c \major  c2  c2 % 49
  c2  c'2 \p
  c2  a2 \cresc
  % 51
  f2\!  g2 % 52
  c2 \f  c2 % 53
  c2  c2 \p % 54
  b2 \cresc  c2\! % 55
  a2  a2  % 56
  g2 _\f  g2 % 57
  g2 _\p  e2 % 58
  f2  f2 % 59
  e2  e2
  a2 \cresc a2\! % 61
  g2  g2 % 62
  c2 \f  c2 % 63
  f2  g2 % 64
  a2  a2 % 65
  \mark #4
  a2  a,2 % 66
  g2  g2  % 67
  g2  g2 % 68
  g2  g2 \cresc % 69
  g2\!  g2
  g4 c4\f  a'2 ~ \sf % 71
  a4  g4  f4  e4 % 72
  d2  d2 % 73
  g,2 g2  \dim g2\!
  g2 % 75
  c2 \p  c2  c2 % 76
  c2  c2  % 77
  \crescOD c2 \cresc  c2\!  % 78
  c2  c2 % 79
  c2  c4  c4 _\f  f2 ~ % 81
  f4  e4  a2 ~ % 82
  a2  a,2 % 83
  \crescOD g2 \dim g2 \!% 84
  g2  g2 % 85
  c2 _\p  c2 % 86
  c2  c2
}


CelloD = {
  c2 c c\cresc c\!
  c a g f f f f f c \tweak X-offset #-4 \ff c c c\dim
  <c g'> <g' c,> <g c,> <g c,>\!

  \once \override NoteHead.extra-spacing-width = #'(-4 . 4)
  <g c,>1\fermata _\markup{\hspace #-4 \lower #2 \dynamic p \hspace #0.5 \fontsize #4 \lower #1.5 \musicglyph "scripts.espr"}
  \bar "|."
}

BassD = {
  \clef bass
  c2 c c\cresc c\!
  c a g f f f f f c'\tweak X-offset #-4 \ff c c c\dim
  c  c  c c \!

  \once \override NoteHead.extra-spacing-width = #'(-4 . 4)
  c1\fermata _\markup{\hspace #-4 \lower #2 \dynamic p \hspace #0.5 \fontsize #4 \lower #1.5 \musicglyph "scripts.espr"}
  \bar "|."
  \pageBreak
}
