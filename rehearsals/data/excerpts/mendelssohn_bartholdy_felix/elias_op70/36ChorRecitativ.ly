\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {36  \smallCaps "Chor und Rezitativ"}}}
upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""
init = {\key c \major \clef bass \time 4/4}

%---------------------------------------------------------------------------------

VocalsA = {
  \init
  R1 * 6
  \clef violin
  r4 ^\markup{Sopran} a'8 a
  d8. d16
  f8 f8 f2 e2~
  e8 e8
  d8 c8 c4 g4  \fermata
  \bar "||"\key f \major
  % 3
}
VocalsD = {
  \key f \major
  \clef "bass" % 1
  r4 c,4 ^\markup{\hspace #-4 Elias}
  a4 g8 f8 % 2
  e-flat'4  r16 a,16 a16 b-flat16
  c8. e-flat,16 e-flat8 e-flat8 % 3

  e-flat8 d8 r8 d16
  d'16 d8
  b-flat8 g8 f8 % 11
  e8. e16 g8 c8 c8
  f,8 r8 f16 g16 % 12
  a-flat8. a-flat16 g8 f8 f4
  c4 \bar "||"
  % 13
}

LyricsA = \lyricmode {
  Ge -- he wie -- der -- um hin--  ab! Tu -- e nach des Herrn Wort!
}
LyricsD = \lyricmode {

  Du   bist ja der Herr. Ich muss um dei  -- net wil  --  len
  lei  -- den,   da  -- rum freu  -- et sich mein Herz
  und ich bin fröh  -- lich; auch mein
  Fleisch wird si  -- cher lie  -- gen.

}

BassA = {
  \init
  \tempo "a tempo Adagio non troppo"
  \extendRT #5
  c,2.\repeatTie \mf-\<
  a4  % 4
  f2 -\sf\> g2\! % 5
  g-sharp1 % 6
  a1 % 7
}
CelloB ={
  d4  g2 ( f8
  e8 ) % 8
  f2.\cresc e4
  \break
  d2. c4 b\f
}
BassB = {
  d4 e4
  f2~ f2.\cresc e4
  \break
  d2. c4
  b4\f
}

BassC = {
  g4 c2 % 11
  \tempo "Recitativo"
  f,2 \> r4 \! g4\fermata
  \p \bar "||"
  \break
}
BassD = {
  \key f \major
  \tempo "Pìu mosso" 4=84
  c4
  c4 ( b-flat4 )\cresc
  b-flat4\! ( % 4
  a4 ) a4 ( g4 ) g4 % 5
  f1 \f \> % 6
  f1 \sf\> % 7
  \crescOD f8\!\cresc a8 c8 ( e8 ) f8 ( -\f
  a8 ) c8 ( e8 ) % 8
  \break
  \tempo "Recitativo"
  f1 ~ -\ff % 9
  \crescOD f1 \dim

  f-sharp,,2\p g2 % 14
  b-flat2 a4 r4 % 15
  b2 r4 c4
  %_\markup{\with-color #white \column{a a a a a}}
  \pp \bar "||"
}

%---------------------------------------------------------------------------------

\include "combine_and_reset.ly"

xxxviChorRezitativ = \include "typeset.ly"
