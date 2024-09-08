\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {23  \smallCaps "Rezitativ mit Chor"}}}

init = {\key g \minor \clef bass \time 4/4}

VocalsA = {
  \init
  R1  % 2
  r2 r4 r8
  \tempo "Recitativo"

  d,8 ^\markup{\hspace #-5 Elias.} % 3
  f-sharp8. f-sharp16 f-sharp8 g8
  a8 a8 f-sharp8 d8 % 4
  c'4 r16 d,16 d16 e16
  f-sharp16 g16 a16 b-flat16
  c16 a16 d16 a16 % 5
  b-flat4  r4 r2
  % 6
  r2 r4 r8
  g16 a16 % 7
  b-flat2 b-flat8 e-flat,8 r8 e-flat8
  % 8
  g-flat8 f16 g-flat16 e-flat8
  b-flat'16 b-flat16 b-flat8 a8 r8
  a8 % 9
  c4 a8 f e-flat8. d16 d4

  r4 r8 d8 f8 f8 f8
  b-flat8 % 11
  b-flat8 a8 r8 f16 g16
  a8. a16 a8 g16 f16
  % 12
  b4 b8. d16 d8. f,16
  f4 % 13
  r4 r8 e8 e8 e16
  f16 g8 g16 a16 % 14
  b-flat4. g8 b-flat8. a16
  g4 % 15
  c-sharp8. c-sharp16 c-sharp4. g16
  a16 g8 f-sharp8 % 16
  r4 f-sharp8 g8 a8. a16
  a8 a8 % 17
  r8 b-flat8 b-flat8 b-flat8
  b-flat8. b-flat16 b-flat8 b-flat8 % 18
  |
  \stopStaff
}

VocalsC= {
  \startStaff
  \key c \major
  \break
  \clef violin % 1
  d'4 ^\markup{ Solo Alt} f-sharp,8
  a8 a4 d,8 d16 d16 % 2
  g4 g8.
  f-sharp16  f-sharp4 r4 % 3
  r8 d'8 d16 a16 f-sharp16
  g16 a8. a16 a8 d,8 % 4
  c'8. c16 c4 r8 d,16
  e16 f-sharp8 g8 % 5
  a4 a8 b8 c8 a16
  f-sharp16 d8. c'16 % 6
  b4 r4 r4 r8 g8 ^\p
}

LyricsA = \lyricmode {
  Der  Herr hat dich er -- ho -- ben aus dem Volk,
  und dich zum Kö -- nig ü -- ber I -- sra --el ge -- setzt.
  A -- ber du, A -- hab, hast Ü -- bel ge -- than ü -- ber al -- le,
  die vor dir ge -- we -- sen sind.
  Es war dir ein Ge -- rin -- ges, dass du wan -- del -- test in der Sün -- de
  Je -- ro -- be -- ams,  und mach -- test dem Baal ei -- nen Hain,
  den Herrn, den Gott I -- sra -- els zu er -- zür -- nen;
  du hast tot -- ge -- schla -- gen und frem -- des Gut ge -- nom -- men!
}
LyricsC = \lyricmode {
  rum darf er Weis -- sa -- gen im Na -- men des Herrn?
  Was wä -- re für ein Kö -- nig -- reich in I -- sra  -- el,
  wenn E -- li -- as Macht hät -- te ü -- ber des Kö -- nigs Macht? Die
}





BassA = {
  \init
  \tempo "Andante" 4=72
  g,4 \f^\markup {\italic {pesante marcato}}
  a8 b-flat8 c4 d8
  e-flat8 % 2
  d4 d8 d8 d2 ~ % 3
  \tempo "Recitativo"
  d2 \p r2 % 4
  r4 f-sharp4 \f r2 % 5
  \tempo "Tempo"
  g,4 \f a8 b-flat8 c4 d8
  e-flat8 % 6
  d4 d8 d8
  \tempo "Recitativo"
  g,2 % 7
  r4 g4 \f r4 g-flat4 ~ \fp % 8
  g-flat2 r4 f4 \f % 9
  a4 r4 r2
  b-flat'1 \pp % 11
  f1 % 12
  d2 \cresc  g,8 \f
  r8 r4 % 13
  c'1 \pp % 14
  g1 % 15
  e2 \cresc a,8 \f
  r8 r4 % 16
  d2 \p c2 \sf % 17
  b-flat2 \sf b-flat2 \p % 18
}

BassB = {
  \tempo "a tempo"
  a4 \sf ^\markup{\dynamic f} a4 \sf
  a4 \sf r4
  \pageBreak
  R1*6
  \inLineOssiaAbove {
    d2 g2 % 21
    d1
  }\lyricmode {
    Sün -- de wil-
  }{
    \voiceFour
    R1 R1
  }% 22

  g,4 \f a8 b-flat8 c4 d8
  e-flat8 % 23
  d4 d8 d8 g,2 \fermata
  \bar "||"
  \mark \default
  \key c \major f'4 \pp f8 f8
  e2 ~ % 25
  e1 % 26
  b8 \pp r8 a8 r8 g-sharp8 r8
  a8 r8 % 27
  f'8 r8 r4 r4 e4 \accent \p % 28
  e8. ( -- e16 -. ) e8 e8
  a,2\cresc % 29
  f'2\! e2
  e8 \pp r8 d8 r8 c-sharp8 r8 d8 \cresc r8\!
  % 31
  b-flat'4 r4 r4
  a4 \sf % 32
  a8.\cresc ( -- a16\! -. ) a8 a8
  d,2 % 33
  b-flat'2 ( a8 )  r8 g8 r8
}

BassC = {
  \tempo "Recitativo"
  f-sharp4 ~f-sharp8 r8 r2 % 2
  e8 \f r8 r4 r8 d8\f d8
  a8 % 3
  f-sharp4 r4 r2 % 4
  f-sharp'1 ~ \fp % 5
  f-sharp2 d8 \f r8 r4 % 6
  r8 g8 \f g8 d8 b4 r4
  \break
}

BassD = {
  \inLineOssia {
    \clef violin   g''4 g4 f8 f8 f8 f8
  }\lyricmode{
    Göt -- ter tun mir dies und
  } {
    \tempo "Recitativo"
    \tweak Y-offset #-4 R1
  }
  \tempo "Allegro moderato" 4=100
  \clef bass
  e,2 \p e2 % 9
  f2 b,2 \sf
  e2 e2 % 11
  f2 b,2 % 12
  e16 -. \pp e16 -. d16 -. e16
  -. f16 -. d16 -. e16 -. f16 -. e16 e16 d16 e16
  f16 d16 e16 f16 % 13
  e16 e16 d16 e16
  f16 \cresc d16\! e16
  f16 e16 e16 d16 e16
  f16 d16 e16 f16 % 14
  e16 e16 d16 e16 f16
  d16 e16 f16 e16 \f
  e16 d16 e16 f16 d16
  e16 f16 % 15
  e16 e16 d16 e16 f16
  d16 e16 f16 e16 e16
  f16 e16 d16 d16 e16
  d16 % 16
  c-sharp2:16 \ff c-sharp2 :16 % 17
  d2 :16 d-sharp2 :16
  \break
}

vocalsE= {
  r2
  \clef violin
  e8 f-sharp8 g-sharp8 a8 % 19
  b8 c8 d8. d16 d4
  g-sharp,4
  R1
  a8. a16 a8 g16 a16
  b-flat8 g8 c-sharp4 % 22
  R1
  b-flat8 b-flat16 b-flat16 b-flat8
  a16 b-flat16 b-flat4 f4 % 24
  R1
  g8 g16 g16 b8 b8
  d2 % 26
  f,8. f16 f8 e8 e2 % 27
}

lyricsE = \lyricmode  {
  Er hat die Pro -- phe -- ten Baals ge -- tö -- tet.
  Er hat sie mit dem Schwert er -- würgt.
  Er hat den Him -- mel ver -- schlos -- sen.
  Er hat die teu -- re Zeit
  ü -- ber uns ge -- bracht.
}
bassE={
  e8 \sf r8 e8 \sf r8
  \tempo "Recitativo"
  %\tweak Y-offset #-4
  r2 % 19
  %\tweak Y-offset #-4
  R1

  \tempo "Tempo"
  \clef bass

  d2:16 \ff c-sharp2 :16 % 21
  \tempo "Recitativo"
  %\tweak Y-offset #-4
  R1

  \tempo "Tempo"
  \clef bass
  a2:16 \ff    b-flat2 :16 % 23
  \tempo "Recitativo"
  %\tweak Y-offset #-4
  R1

  \tempo "Tempo"
  \clef bass
  b-flat2:16\ff
  g2 :16 % 25
  \tempo "Recitativo"
  %\tweak Y-offset #-4
  R1
  %\tweak Y-offset #-4
  R1
  \tempo "Tempo"
  \clef bass
  c2:16 \ff  a2 :16 % 28
}
BassE = \bassE
VocalsE = \vocalsE
LyricsE = \lyricsE

BassF = {
  \break
  g'8 ^. g8 ^. f8 ^. c-sharp8 ^.
  d4
  \tempo "Recitativo"

  r4 % 29
  r4 g-sharp8 r8 r4 a8 r8
  r4 b,8 r8 r4 c8 r8 % 31
}
LyricsF = \lyricmode {

  So zie -- het hin, und greift E -- li -- as,
  er ist des To -- des schul -- dig.
}
VocalsF = {
  R1
  r2 r4
  r16 f16 e16 d16 % 29
  b'4 r16 b16 b16 e,16
  c'8 a8 r4
  g-sharp8 g-sharp16 g-sharp16 b8. b16
  b8 e,8 r4 % 31
}
lyricsG = \lyricmode {
  Tö -- tet ihn,
  lasst uns ihm tun, wie er ge -- tan hat!
}
vocalsG = {
  \clef violin
  c'16 b16 a8
  a8 a16
  r4
  a16 c4 ~ % 32
  c8 a8 g-sharp8 a8 a8 e8
  r4
}
bassG = {
  r4 d8 r8
  %\tweak Y-offset #-3
  r2
  %\tweak Y-offset #-3
  r2
  %\tweak Y-offset #-3
  r4
  e8\ff
  %_ #(cutLine 140)
  r8 \bar "||"
}

BassG = \bassG
VocalsG = \vocalsG
LyricsG = \lyricsG


%----------------------------------------------

\include "combine_and_reset.ly"

xxiiiRezitativMitChor = \include "typeset.ly"
