Titel = \markup{\bold\huge {"Nr." {17  \smallCaps "Arie"}}}

init = {
  \key a \minor
  \clef bass
  \time 4/4
}

BassA = {
  \init
  \tempo "Allegro con fuoco e marcato" 2=92
  r4 e,\f d' b8 a
  g-sharp4 e d c8 b
  a4 r4 r2
  R1
  r4 e'\f d' b8 a
  g-sharp4 e d c8 b
  a4 r4 r2
  r2 r4 a\p e' f8 e d4 e c r d r g-sharp,8^\accent\staccato
  a_. b_. c_. d_. e_. f-sharp_. g-sharp_. a4 r d, r
  g-sharp,8^\accent _. a_. b_. c_. d_. e_. f-sharp_. g-sharp_. a b c b a g f-sharp e


  d-sharp4 -. d-sharp4 -. e4 -.   f-sharp4 -. % 2
  g4 -. g-sharp4 -. a4 -. b4 -. % 3
  c4 ^. c-sharp4 ^. \cresc d-sharp4\! ^. e4 ^.  % 4
  b4 r4 b4 r4 % 5

  a-sharp4\f r4  r2 % 6

  a-sharp8 ^.\p b8 ^. c-sharp8 ^.
  b8 a-sharp8 ^. g8 ^. f-sharp8 ^.
  e8 ^. % 7
  d-sharp4\pp a'4 ^. g4 ^. f-sharp4
  ^. \bar ""
  % 8
  e4 ^. d4 ^. c4 _. b4 _. % 9
  a4 _. g4\cresc _. f-sharp4\! _. e4 _.

  b'4 r4 b4 r4 % 11

  \mark #1
  r4 e4\ff g'4 e8 d8
  % 12
  c-sharp4 b4 a-sharp4 b8 c-sharp8 % 13
  f-sharp,2:16\fp f-sharp2 :16 % 14
  f-sharp2 :16 _\sempreP f-sharp2
  :16 % 15
  f-sharp2 :16 f-sharp2 :16 f-sharp2 :16
  f-sharp2 :16 b,8 _. _\< c-sharp8 _. d-sharp8 _. -\!
  e8 _. f-sharp8 ^. _\> g8 ^. a8
  ^. -\! b8 ^. % 16
  a,2:16\p a2 :16 % 17
  b2 :16 b2 :16 % 18
  b2 :16 b2 :16 % 19
  c8 ^. _\< d8 ^. e8 ^. -\!
  f8 ^. g8 ^. _\> a8 ^. b8 ^. -\!
  c8 ^.
  c,1\p % 21
  c8 ^. d8 ^. e8 ^. f8 ^.
  g8 ^. a8 ^. b8 ^. c8 ^.
  % 22
  c,1 % 23
  f,8 _. g8 _. a8 _. b-flat8 _.
  c8 _. d8 _. e8 _. f8 _. % 24
  f,1 % 25
  f8 _. \cresc g8\!
  _. a8 _. b-flat8 _. c8 _. d8 _.
  e8 _. f8 _. % 26
  g2 a2 % 27
  b-flat4\f d4 b-flat4 f8
  d8 % 28
  b-flat4  r4  r2 % 29
  r4 d'4\f a4 f8 d8

  a4 r4  r2 % 31
  r4 e'4\ff e'4 b8 a8
  % 32
  g-sharp4 e4 d4 c8 b8 % 33
  a4 r4 r2 % 34
  r2 a4\p  r4 % 35
  \mark #2
  e4 e'4\ff d'4 b8 a8 % 36
  g-sharp4 f4 e4 d8 e8
  % 37
  c4 r4 c4\p r4 % 38
  d4 r4 e4 r4 % 39
  c-sharp4 r4 d4 r4
  a4 r4 a4 r4 % 41
  r4 d4^.\p f4 ^. a4 ^. % 42
  d8 e8 f8 e8 e8
  c8 b8 a8 % 43
  g-sharp4 r4 r4 e4 % 44
  a4 r4 r4 c,4 % 45
  f4 r4 r4 d4\cresc % 46
  e4\! r4 e4 r4 % 47
  d-sharp2\f r2 % 48
  a'8 ^.\p b8 ^. c8 ^. b8
  ^. a8 ^. g8 ^. f-sharp8 ^. e8
  ^. % 49
  d-sharp4 r4 r4 b8 c8

  d8 e8 f8 e8 d8
  c8 b8 a8 % 51
  g-sharp4 r4 r4 e'4 % 52
  a4 r4 r4 c,4 % 53
  f4 r4 r4 d4\cresc % 54
  e4\! r4 e4 r4 % 55
  a,4 c'4 ^.\p a4 ^. f-sharp4 ^. % 56
  d-sharp2 b'4. d,8 % 57
  c-sharp2 a'4. c,8
  b4 c8 d8 e4 f-sharp8
  g-sharp8 % 59
  a4 ^. e'4 ^. c4 ^. a4 ^.

  f-sharp2 d'4. ( ^- \cresc f,8\! ) ^. % 61
  e2 c'4. ( ^- e,8 ) ^. % 62
  d-sharp4 f-sharp4 a4 c8
  a8 % 63
  d-sharp4 c4 b4 a8 c8
  % 64
  \mark #3
  d,2:16\ff  d2 :16 % 65
  d2 :16 d2 :16 % 66
  d4 ^\markup{\fontsize #-3 \hspace #-3  Elias }
  <<
    \new Voice {
      \voiceFour
      r4 r2 R1 r2 r4
    }
    \new Voice = Hammer \with {
      fontSize = #-3
      \turnOnGrey
    }{
      f'4 d
      b % 67
      g-sharp4 f4 e4 d4 % 68
      c4 ( e4 ) a4
    }
    \new Lyrics \with {
      alignAboveContext = mMusicCTX
    }\lyricsto Hammer {
      ist nicht des Herrn Wort wie ein Ham -- mer,
    }
  >>
  d,4\f
  e4 r4 e4 r4
  \tempo \markup{\hspace #-4 "Tempo I"}
  r4 f'4\ff d4 b8 d8 % 71
  g-sharp,4 f4 e4 d8 e8
  % 72
  c4 a4 g4 f8 g8 % 73
  e4 r4 e'4 r4 % 74
  a,4 r4 r2 ^\fermata \bar "|."
  \pageBreak
}

CelloA = \BassA
