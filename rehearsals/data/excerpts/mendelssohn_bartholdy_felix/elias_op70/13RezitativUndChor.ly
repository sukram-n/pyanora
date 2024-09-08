% Key Time Tempo
Titel = \markup{\bold\huge{ Nr. \smallCaps {13  Rezitativ und Chor}}}

init = {
  \key f-sharp \minor \time 4/4 \clef bass
  \partial 2
}

%-------------------------------------------------------------------
BassA = {
  \init
  r2 % 2
  r4 f-sharp,,2.\fp % 3
  f-sharp1 % 4
  r4 f-sharp'4\f r4 a-sharp,4 % 5
  r4
  \tempo "Allegro molto" 4=160
  b4 :16\f
  b4 b4 :16 % 6
  b4 r4 r2 % 7
  b4\f r4 r2 % 8
  r4 c-sharp4 :16\f c-sharp4 c-sharp4 :16 % 9
  c-sharp4 r4 r2
  d4\f b4 r2 % 11
  e4\f c-sharp4 r2 % 12
  f-sharp4\f f-sharp,4  r2
  \bar "||"
}
VocalsA = {
  \init
  c-sharp4. ^\markup{ Elias:} c-sharp8 % 2
  c-sharp4 a-sharp4 r8 f-sharp8 b8. a-sharp16 % 3
  c-sharp2 r8 f-sharp,8 f-sharp8 g-sharp8
  % 4
  a-sharp8 a-sharp8 r8 a-sharp16 b16
  c-sharp8 c-sharp8 r16 c-sharp16
  c-sharp16 f-sharp,16 % 5
  d-sharp'8 b8 r4 r2 % 6
  r4 b4. f-sharp8 f-sharp8 f-sharp8
  % 7
  d4. d8 c-sharp4 b4 % 8
  a4 r4 r2 % 9
  r4 a'4 a8 e8 g8
  f-sharp8
  r2 b16 b16 b16 f-sharp16
  a16 g-sharp16 g-sharp8 % 11
  r2 c-sharp8 g-sharp8 b8 a8 % 12
  r2 c-sharp4 b8 a16 a16
  \bar "||"\key a \major
}

LyricsA = \lyricmode{
  Ru -- fet lau -- ter! er hört euch nicht.
  Ritzt euch mit  Mes -- sern und mit Pfrie -- men nach eu -- rer Wei -- se.
  Hinkt um den Al -- tar, den ihr ge -- macht. ru fet und weiss -- sagt,
  da wird kei -- ne Stim -- me sein,  kei -- ne Ant -- wort,
  kein Auf -- mer -- ken.
}


init = { \key a \major \time 6/8 \clef bass}

%-----------------------------------------------------------------------------

BassB =  {
  \break
  \init
  \tempo "Presto" 4.=116

  R2. * 2
  f-sharp'16\ff e-sharp f-sharp g-sharp a b c-sharp d c-sharp b a g-sharp
  f-sharp e-sharp f-sharp g-sharp a b c-sharp d c-sharp b a g-sharp f-sharp8 r r r4 r8
  R2.
  c-sharp8\ff e-sharp g-sharp b d c-sharp
  a c-sharp f-sharp, e-sharp g-sharp c-sharp, f-sharp r r r4 r8 R2.
  \mark #4
  c-sharp8\ff e-sharp g-sharp b d c-sharp
  a c-sharp f-sharp, e-sharp g-sharp c-sharp, f-sharp f-sharp f-sharp f-sharp r r
  f-sharp,\sf f-sharp f-sharp f-sharp r r
  f-sharp\sf f-sharp f-sharp f-sharp r r
  f-sharp\sf f-sharp f-sharp f-sharp r r
  f-sharp\sf f-sharp f-sharp f-sharp r r
  f-sharp\sf f-sharp f-sharp f-sharp r r
  f-sharp'8 f-sharp f-sharp e e e
  d d d c-sharp c-sharp c-sharp
  b-sharp4\ff r8 r4 r8
  b-sharp16 c-sharp b-sharp c-sharp d-sharp e f-sharp g-sharp f-sharp e d-sharp c-sharp
  b-sharp8 f-sharp' a c-sharp, f-sharp a
  d-sharp, f-sharp a f-sharp a f-sharp e-sharp r r r4 r8
  e-sharp16 f-sharp e-sharp f-sharp g-sharp a b c-sharp b a g-sharp f-sharp
  e-sharp8 b' d f-sharp, b d
  g-sharp, b d b d b a r r r4 r8
  R2.
  f-sharp16 e-sharp f-sharp g-sharp a b c-sharp d c-sharp b a g-sharp
  f-sharp16 e-sharp f-sharp g-sharp a b c-sharp d c-sharp b a g-sharp
  f-sharp8 a f-sharp e-sharp c-sharp' e-sharp,
  f-sharp d c-sharp b c-sharp d
  e-sharp f-sharp g-sharp a b c-sharp
  d f-sharp e d c-sharp b
  c-sharp c-sharp, e-sharp f a-sharp c-sharp
  b d-sharp f-sharp g-sharp, b d
  e-sharp, g-sharp b c-sharp b g-sharp
  f-sharp a c-sharp d, f-sharp b
  c-sharp, f-sharp a c-sharp a f-sharp
  c-sharp e a a, c-sharp e
  \mark #5
  d2.\ff~ d4. d8 d d c-sharp2.~c-sharp4. c-sharp8 c-sharp c-sharp
  b2.~b4. b8 b b c-sharp4. c-sharp c-sharp a
  d2.\ff~ d4. d8 d d c-sharp2.~c-sharp4. c-sharp8 c-sharp c-sharp
  b2.~b4 r8 r4.\fermata R2.\fermata
  b4\ff r8 r4 r8
  R2.\fermata
  R2.\fermata
  R2. * 2
  f-sharp'16 e-sharp f-sharp g-sharp a b c-sharp d c-sharp b a g-sharp
  f-sharp16 e-sharp f-sharp g-sharp a b c-sharp a g-sharp f-sharp e d
  c-sharp8 r r r4 r8 R2.
  c-sharp8\ff r r r4 r8 R2.
  f-sharp,8\ff r r r4 r8 R2. * 3
  f-sharp8\ff r r r4 r8
  R2. * 3 \bar "||"
}

CelloB = \BassB
