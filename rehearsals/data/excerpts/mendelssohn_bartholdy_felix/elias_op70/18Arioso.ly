Titel = \markup{\bold\huge {"Nr." {18  \smallCaps "Arioso"}}}
mainInstrumentName = \VclKb
additionalInstrumentName = ""

init = {
  \clef bass
  \time 2/4
  \key e \minor
}
%---------------------------------------------------------------------------------

CelloA = {
  \init
  \tempo  "Lento" 8=96
  e,2\pp ~  ^\markup{\hspace #-8 Vcl.}
  e2  % 3
  b4. a8 % 4
  g4 f-sharp4 % 5
  b4. r8 % 6
  r4 r8 e,8 % 7
  a4 ( e4 ) % 8
  a4 ( e4 ) % 9
  b'4\fermata ~ b8\fermata
}
BassA =  {
  \init
  \tempo  "Lento" 8=96
  R2 * 3
  R2*3
  R2 * 2
  r4\fermata r8\fermata
}
BassB = {

  r8
  g,2 ~ % 11
  g2 ~ % 12
  g4 e'4 % 13
  d4. c8 % 14
  b4. a8 % 15
  g-sharp4 a4 ~ % 16
  a8 a8 f-sharp8 ( g16 a16 )
  % 17
  b8 b8\cresc b8\! b8 % 18
  b8 b8 b8 b8
  R2*2
  r4  e4 ~\pp % 2
  e2 % 3
  b4 b4 % 4
  b4 \cresc b4\! % 5
  b4 ~\fermata b8 \fermata  r8 % 6
  g-sharp2\pp % 7
  a2 % 8
  b8 r8 b8 r8 % 9
  e8 e8\cresc ( b8\! a8 )
  \mark #1
  g-sharp2 % 11
  a8 a8 a8 a8 % 12
  a-sharp4 r4 % 13
  b8\pp  r8 b8 r8 % 14
}
CelloB = \BassB

CelloC ={
  e,2 ~ % 15
  e2 ~ % 16
  e2 ~ % 17
  e2 ~ % 18
  e8 _\< a16^( b16 c8
  b16 _\> a16) -\! % 19
  e8 e8 e8 e8
  e2 ^\pp
  e'4
}
BassC = {
  R2 *7
}
BassD = {
  e4\pp e4  e2 ^\fermata \bar "|."
}

