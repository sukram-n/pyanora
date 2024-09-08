%------------------------------------------------------------------------------
Titel = \markup{\bold\huge { "Nr." \smallCaps{"12 Rezitativ und Chor"}}}
mainInstrumentName = \VclKb
lowerMusicInstrumentName = ""


BassA = {
  \clef "bass" \time 4/4 \key f \major \partial 4 r4 % 1
  R1*2 % 3
  b-flat,2.\f r4 % 4
  r2 e2 \sfp % 5
  c-sharp2 \f r2 % 6
  d2 (\p c2 ) % 7
  b-flat1 ~\pp % 8
  b-flat2 a-flat2 \sf % 9
  g-flat2. \sf  r4
  r2\fermata r2\fermata \bar "||"
  % 11
}
CelloA = \BassA

VocalsA = {
  \clef "bass" \time 4/4 \key f \major \partial 4
  c8.^\markup{\hspace #-4 Elias: } \f c16 % 1
  c2 a4 r4 % 2
  r2 r8 a8 a8 b-flat16
  a16 % 3
  d4 r8 d8 d4 g,8 r8 % 4
  g8 g16 g16 a8 b-flat8
  d4 c-sharp8 r8 % 5
  r2 a8 a16 a16 a8
  e8 % 6
  f2 r4 f8 c8 % 7
  d-flat8 d-flat16 f16 b-flat4 r4 b-flat8 b-flat8 % 8
  b-flat4 f8 f8 r4 b-flat8.
  b-flat16 % 9
  d-flat2 b-flat4 b-flat8. b-flat16
  d-flat2 ^\fermata b-flat2 ^\fermata \bar "||"
  \key a \major
}

LyricsA = \lyricmode {
  Ru -- fet lau -- ter! denn er ist ja Gott! er dich -- tet, o -- der er hat zu
  schaf -- fen, o -- der ist ü -- ber Feld,
  o -- der schläft er viel -- leicht, dass er auf  -- wa  -- che.
  Ru -- fet lau -- ter,  ru -- fet lau  -- ter!
}


init = {
  \clef bass
  \key a \major
  \time 2/2
}

BassB = {
  \pageBreak
  \break
  \init
  \tempo "Allegro" 2=80
  <<
    \new Voice \with {
      fontSize = #-3
    } {c-sharp'2 :8  c-sharp2 :8  c-sharp2 :8  c-sharp2 :8 }
    \new Voice{\voiceFour R1  R1 }
  >>

  c-sharp,4\ff r4 r2 % 14
  R1 *1 % 15
  f-sharp4 r4 r2 % 16
  R1 % 17
  d4 r4 r2 % 18
  R1 % 19
  b'4  r4 r2
  R1 % 21
  c-sharp,2 e-sharp2 % 22
  g-sharp2 c-sharp2 % 23
  c-sharp,8 c-sharp8 c-sharp8 c-sharp8 c-sharp2
  :8 % 24
  c-sharp8 c-sharp8 c-sharp8 c-sharp8 c-sharp2
  :8 % 25
  c-sharp2 e-sharp2 % 26
  g-sharp2 c-sharp2 % 27
  f-sharp,8 f-sharp8 f-sharp8 f-sharp8
  f-sharp2 :8 % 28
  f-sharp2 :8 f-sharp2 :8 % 29
  e-sharp8 e-sharp,8 e-sharp8 e-sharp8 e-sharp2
  :8
  e-sharp2 :8 e-sharp2 :8 % 31
  e-sharp1 ~ % 32
  e-sharp2\fermata \bar "|."
 % \pageBreak
}
CelloB=\BassB
