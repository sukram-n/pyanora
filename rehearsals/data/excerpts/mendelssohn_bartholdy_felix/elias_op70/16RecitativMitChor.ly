Titel = \markup{\bold\huge { "Nr." \smallCaps "16 Rezitativ mit Chor"}}
mainInstrumentName = \VclKb
lowerMusicInstrumentName = ""

init = {
  \clef bass
  \time 4/4
  \key e-flat \major
  \partial 2
}
%-----------------------------------------------------------------------------

BassA ={
  \init
  r2
  \once \override Staff.DynamicText.transparent=##t
  R1 R1  *4
}
VocalsA = {
  \init
  r8 ^\markup{Elias:} e-flat, e-flat  e-flat16  f
  g-flat4 ~ g-flat16 g-flat g-flat g-flat g-flat4 e-flat
  r2 r8 e-flat e-flat f g-flat g-flat16 a-flat b-flat8.^\sf b-flat16 b-flat4 e-flat,
  R1 e-flat8^\f e-flat g-flat b-flat
  \extendLV #4
  e-flat2^\sf\laissezVibrer \bar "||"
  \key g \major
  \break
}
LyricsA = \lyricmode{
  Der du dei -- ne Die -- ner machst zu Gei -- stern, und
  dei -- ne Eng -- el zu Feu -- er flam -- men,
  sen -- de sie her -- ab!
}


init = {
  \clef bass
  \key e \minor
  \time 4/4
}

BassB ={

  \clef bass \key e \minor
  \tempo "Allegro con fuoco" 4=152
  b,8 \ff b8 \> b8
  b8 b2 :8\!   % 2
  b2 :8\p \< b2 :8 % 3
  b2 :8 \! b2 :8\f % 4
  b2 :8  b2 :8 % 4
  b2 :8  b2 :8 % 4
  b8 g'8 e8 g8
  b,8 g'8 e8 g8 % 7
  b,16\ff g'16 e16 g16
  b,16 g'16 e16 g16
  b,16 g'16 e16 g16
  b,16 g'16 e16 g16
  % 8
  b,8 b'8 c8 b8
  a8 g8 f-sharp8 e8 % 9
  d-sharp4 \sf d-sharp4 d-sharp4 d-sharp4

  e4 ^\f r4 r8 c'8 b8
  a8 % 11
  g-sharp4 _\sf g-sharp4 g-sharp4 g-sharp4 % 12
  a4 r4 r8 a,8 b8
  c8 % 13
  d4 \sf d4 d4 d4 % 14
  c2 r8 c'8 c8 c8
  % 15
  \mark \default
  b4 b4 b4 b4
  a-sharp8\sf b8  c-sharp8_\sempreF b8 a-sharp2 ~ % 17
  a-sharp8 b8 a-sharp8 b8
  c-sharp4 f-sharp,4 % 18
  f-sharp2 ~ \sf f-sharp8 g8  a8
  g8 % 19
  f-sharp2 ~ f-sharp8 a8 g8
  f-sharp8
  e8 _\sf f-sharp8 g-sharp8 f-sharp8
  e2 ~ % 21
  e8 c'8 b8 a8
  g-sharp8 e8\f f-sharp8 g-sharp8 % 22
  a8 g-sharp8 a8 b8
  c8 d8 c8 b8 % 23
  a4 a4 r2 % 24
  r8 b,16\f b16 c-sharp16 b16
  d-sharp16 b16 e16 b16
  d-sharp16 b16 e16 b16 f-sharp'16
  b,16 % 25
  g'16 e16 e16 e16
  f-sharp16 e16 g16 e16
  a16 e16 b'16 e,16
  c'8 c8 % 26
  b2 :16 b2 :16 % 27
  b2 :16 b16 a16 f-sharp16
  a16 b16 a16 f-sharp16
  a16 % 28
  b,2 :16 b2 :16 % 29
  b2 :16 b16 a'16 f-sharp16
  a16 b,16 a'16 f-sharp16
  a16
  b,4 b'4\f a4 g4 % 31
  f-sharp4 e4 d-sharp4 e4 % 32
  a,8 \sf a8 a8 a8 \dim
  a2 :8\! % 33
  a8 r8 r4 r2 % 34
  a8\p a8 \dim a8\!
  a8 a2 :8 % 35
  a8 r8 r4 r2 % 36
  R1 % 37
  \mark \default
  r2\fermata a2\pp % 38
  g2 f-sharp2 % 39
  e2 \fermata d2\cresc
  c2\! d'2 % 41
  g,2 \fermata g2\f % 42
  c2 b2 % 43
  a-sharp2 a-sharp2 % 44
  b2 \fermata b'4 a4 % 45
  g-sharp1  % 46
  f-sharp2 e2 % 47
  a2 \fermata c4\f b4 % 48
  a2 b2 % 49
  g2 a2
  d-sharp,2  e2
  % 51
  a,1 ~ % 52
  a2 a2 % 53
  b2 b2 % 54
  e,1 \fermata \bar "||"
}
CelloB = \BassB

BassC = {

  % 55
  \tempo Recitativo
  R1 % 56
  r2 e'4\ff r4 % 57
  R1 % 58
  r2 e4\ff r4 % 59
  R1
  r2 a,4\ff  r4 % 61
  r4 a4\ff  r4 f-sharp4 % 62
  r4
  \tempo "tempo Allegro vivace"
  b4 r4 b4

  e4 r4 r2
  \break
  r2 e4\ff r4
  e1\sf e4 r e r e1\sf e4 r
  e
  r \bar "|."
  \stopStaff
  \override Staff.NoteHead.transparent = ##t
  e1_\markup{\italic{attaca subito}} e e e
  \override Staff.NoteHead.transparent = ##f
}

VocalsC = {
  \break
  \clef bass
  \key g \major
  e4^\markup{\hspace #-4 Elias} g-sharp,8 g-sharp a4 b e,2
  r8 e g-sharp b d2 d4. d8 d4 g-sharp, r2
  g-sharp4 g-sharp8 g-sharp g-sharp4 a8 b
  c2 r4 a d-sharp2 e b b e, r
}

LyricsC = \lyricmode {
  Greift die Pro -- phe -- ten Baals,
  dass ih -- rer kei -- ner ent -- rin -- ne,
  führt sie hin --  ab an den Bach und schlach -- tet sie da -- selbst!
}
