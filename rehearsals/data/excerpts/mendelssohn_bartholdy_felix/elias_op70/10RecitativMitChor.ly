init = {
  \time 4/4
  \key c \minor
  \clef bass
}
toc_titel = \markup{\smallCaps{"10 Recitativ mit Chor"}}
Titel = \markup{\bold\huge { "Nr." \toc_titel}}
mainInstrumentName = \VclKb

BassA = {
  \init
  \tempo "Grave" 4=60
  e-flat,2\f e-flat4 e-flat4
  e-flat1\fp
  c\fp
  b-flat\pp ~ b-flat
}
CelloA = \BassA

BassB = {
  \break
  \tempo "Recitativo"
  g2\f r2
  r2 g'\f R1 a-flat2\f r2
  \pageBreak
  \tempo "a tempo"
  R1
  r2 c,2\p
  \tempo "Recitativo"
  f,1
  r2 b-flat\fermata \bar "||"
}
VocalsB = {
  \clef bass \key c \minor r4^\markup{Elias:} b-flat8 e-flat, r e-flat g b-flat d-flat4 d-flat4 r e-flat,8 f
  g a-flat b-flat g16 e-flat c'4 c4 r2 c4. c8
  e-flat2 a, b-flat e-flat, a-flat4. a-flat8 a-flat4 a-flat8 g f4 e-flat4 r2\fermata
}
LyricsB = \lyricmode {
  Heu -- te, im drit -- ten Jah -- re, will ich mich dem Kö -- ni -- ge zei -- gen,
  und der Herr wird wie -- der reg -- nen las -- sen auf Er -- den.
}

BassC = {
  \break
  \tempo "Allegro vivace" 4=144
  e-flat4 r4 r8. e-flat16[ e-flat8\tenuto ( r16 e-flat16-.)]
  d4 r4 r8. d16[\cresc d8\!\parenthesize \tenuto\parenthesize ( r16 d16\parenthesize -.\!])
  c4 r4 r8. c16[ c8\parenthesize \tenuto\!\parenthesize ( r16 c16\parenthesize -.)]
  a-flat8-.[ (r16 a-flat16-.)  \crescOD a-flat8-.\cresc (r16 a-flat16-.)]
  a-flat8-.[ (r16 a-flat16-.)  a-flat8-. (r16 a-flat16-.)]
  g8-.[ (r16 g16-.)  g8-. (r16 g16-.)]
  g8-.[ (r16 g16-.)  g8-. (r16 g16-.)]
  a-flat8-.[ (r16 a-flat16-.)  a-flat8-. (r16 a-flat16-.)]
  a-flat8-.[ (r16 a-flat16-.)  a-flat8-. (r16 a-flat16-.)]
  g8\f-.[ (r16 g16-.)  g8-. (r16 g16-.)]
  g8-.[ (r16 g16-.)  g8-. (r16 g16-.)]
  g2 g2
}

BassD = {
  \break
  \tReci
  g4  r r2 r2 g'4\f r4 r4 g-.\f d-. c-. b2 r2 R1
}
VocalsD = {
  \key c \minor
  \clef violin r4 r8 g'8^\markup{Tenor Solo}
  d'4. d8 d4 g,4 r4 g4 f'2. r4 r4 f f4. d8 c8. b16 b8. c16 d4 r4
}
LyricsD = \lyricmode {
  Bist Du's, E -- li -- as, bist du's, bist du's, der I -- sra -- el ver -- wirrt?
}

BassE = {
  \break
  \mark \default
  \tempo "a tempo"
  c8\f-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 c16-.)   c8-.( r16 c16-.)]
  c8-.([ r16 d16-.)   e-flat8-.( r16 d16-.)]
  c8-.([ r16 b-flat16-.)   a8-.( r16 g16-.)]
  f-sharp4\sf r4 r2
}

BassF = {
  \break
  \tReci
  R1
  d'4\f r4 r2 % 39
  r4 g,4  r2
  r2 g'4 r4 % 41
  R1 % 42
  b-flat,2\p e,2 ( _\<
  e-flat2 ) \sf r2 % 51
  \tempo "Allegro vivace"
  r4 a-flat4\f c4
  e-flat8. a-flat,16 % 52
  a-flat'4 r4 r2 % 53
  r4 a-flat,4\f c4 e-flat8. a-flat,16

  \tReci

  a-flat'4 r4 r2 % 9
  R1

  \tempo "a tempo"

  r4 f,4\f a4
  c8. f,16 % 11
  f'4 r4 r2 % 12
  r4 b-flat,4\f d4 f8. b-flat,16 % 13
  b-flat'4 r4
  \tReci
  r2  % 14
  R1 % 15
  \break
  r4 c,4 ( _\sf b4 ) r4 % 21
  R1 % 22
  r4 f'4 ( _\sf e4 ) r4 % 23
  R1 % 24
  f-sharp,2\sf ( g4 ) r4 % 25
  \mark #2
  \tempo "a tempo Andante"
  R1
  r2 e'\p
  \break
}
VocalsF = {
  \clef bass
  \key c \minor
  e-flat,8.^\markup{\hspace #-4 Elias:} a,16 a8
  b-flat8 c8 a16 g16
  f-sharp4 % 38
  r4 d'8 a8 b-flat2 % 39
  d8 g, r4 r8 g g g b8. b16 b4 r d
  d8. g,16 g8 g8 a-flat8. a-flat16 g8 f e g b-flat c d-flat4 d-flat d-flat2 r4 e-flat,4
  c'2 r2 r4 c,4 e-flat a-flat8. e-flat16 a-flat2 r2

  r4 ^ "" e-flat8 e-flat8 a-flat4 a-flat8
  b-flat8 % 2
  c4. c8 e-flat8 c8 a-flat8
  b-flat8 % 3
  c2  r2 % 4
  r4 c4 c4 e-flat,4 % 5
  e-flat4 d4 r2 % 6
  r2 r4 b-flat'4 % 7
  b-flat4 b-flat8 b-flat8 a-flat4.
  a-flat8 % 8

  g2 r4 f4 d'4 f,8 f8
  a-flat4 g8 f8 % 16
  e4 r4 r4 c'8 g8 % 17
  a-flat4 a-flat8 f8 c'4 c8 c8 % 18
  c2 b4 r4 % 19
  g2 b4 a8 g8
  c2 g
}
LyricsF = \lyricmode{
  Ich ver -- wir -- re I -- sra -- el nicht,
  son -- dern du, Kö -- nig, und dei -- nes Va -- ters Haus, da -- mit,
  dass ihr des Herrn Ge -- bot ver -- lasst und wan -- delt Baa -- lim nach.
  Wohl an! so sen -- de nun hin und ver -- sam -- mle zu mir das gan -- ze I -- sra -- el
  auf den Berg Car -- mel! und al -- le Pro -- phe -- ten
  Baals und al le Pro -- phe -- ten des Hains, die vom Ti -- sche
  der Kö -- ni -- gin es -- sen: da wol -- len wir seh'n, ob
}

BassG = {
  % main music
  \break
  d g c, c
  \crescOD a g\cresc c\! c4( b) a2 a2 g1\f  \bar "||"
  \key f \major
  \break
}

BassH = {
  % main music
  c1
  \tReci
  R1

  r4 \tempo "Maestoso" 4=80
  c8.\f  c16
  c4 r4 % 13
  R1
  r4 b-flat8.\f b-flat16 b-flat4 r4
  \pageBreak
}
CelloH = \BassH


LyricsH = \lyricmode{
  % ossia lyrics
  Auf denn, ihr Pro -- phe -- ten Baal's, er -- wäh -- let ei -- nen
  Far -- ren, und legt kein Feu -- er da -- ran,
  und ru -- fet
}

VocalsH = {
  % ossia music
  \clef bass \key d \minor
  R1
  c4^\markup{\hspace #-3 Elias:} g4 r8 e16 e e8. f16
  g4 r8 c,8 g'8 g8
  a8 b8 % 3

  c8 c8 r8 g8
  e8 c8 b-flat'8 b-flat16
  b-flat16 % 14
  b-flat4  r4 r8 e,8 f8
  g8
}
CelloI = { a2 (\p  d2 ) a1} % 23
BassI = {R1 R1}


VocalsI = {
  % 15
  a4 a8. a16 a8 a8
  f8 d8 % 16
  c-sharp8 c-sharp8 r8 c-sharp8 e4
  e8. e16 % 17
}
LyricsI = \lyricmode{
  % ossia lyrics
  ihr an den Na -- men eu -- res Got  -- tes,
  und ich will den
}

BassJ = {
  a2 ( \< d2 ) \> % 24
  a2.\!  r4
}
VocalsJ ={
  a4 a8 a8 d4. d8 % 18
  d2 c-sharp4 r4
}
LyricsJ = \lyricmode {
  Na -- men des Herrn an ru -- fen;
}

BassK = {
  % single staff
  \break
  \mark #3
  \tempo "Allegro vivace a tempo"
  f16\pp f16 f16 f16 f16 f16 f16 f16 f8 r8 r4
  g2 :16  g8 r8 r4 % 27
  a2 :16 a8 r8 r4 % 28
  b-flat2 :16 b-flat8 r8 r4 % 29
  g2 :16\f  ^\markup{\dynamic sf} g8 r8 r4
  a4\p ^\markup{ pizz.}  r4 a4  r4 % 31
  d2 :16 ^\markup{ arco } d8 r8 r4 % 32
  f,2 :16 f8 r8 r4 % 33
  g2 :16 g8  r8 r4 % 34
  a2 :16 a8 r8 r4 % 35
  b-flat2 :16 b-flat8 r8 r4 % 36
  g2 :16\f g8  r8 r4 % 37
  a'4\p ^\markup{pizz.} r4
  a4 r4 % 38
  d,4 r4 r2
  % 39
  R1
}

BassL = {
  % main music
  \break
  r2 r4\fermata
  \tReci r4 % 41
  r2 r4 c4 ~ \p^\markup{arco} % 42
  c2  b-flat4 ( a4 ) % 43
  b-flat1 ~ % 44
  b-flat1 % 45
  %\once \override TempoMark.self-alignment-X = ##f
  \tempo Lento
  b4 ( d4 ) c2 ~ % 46
  c2 r2 % 47
  r4 c2.\p % 48
  R1 r2 r2\fermata \bar "|."
}
CelloL=\BassL
VocalsL = {
  % ossia music
  \clef bass
  \key f \major
  r2 r4 \fermata
  d4^\markup{ \hspace #-2 Elias: }  % 41
  d8. f,16 f8 g8 e-flat4
  r8 c8 % 42
  e-flat4 e-flat8 e-flat8 g4 f4
  % 43
  r4 b-flat4 b-flat8. f16 f8
  f8 % 44
  g4 g8 g16 f16 f4
  e4 % 45
  r4 f4. f8 e8 f8 % 46
  c2 r8 c8 e8 g8 % 47
  c2 c4 c,4 % 48
  r8 c8 e8 g8 c2 % 49
  c4 c,4 r2 \fermata
}
LyricsL = \lyricmode{
  % ossia lyrics
  Ruft  eu -- ren Gott zu -- erst, denn eu -- er sind vie -- le!
  Ich a -- ber bin al -- lein ü -- ber ge -- blie -- ben.
  ein Pro -- phet des Herrn.
  Ruft eu -- re Feld -- göt -- ter, und eu -- re Berg -- göt -- ter!
}
