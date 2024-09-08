titel = \markup{\smallCaps "Einleitung"}
Titel = \markup{\bold\huge \titel }

init = {
  \clef bass \time 4/4
  \key d \minor
}

bassA ={
  \tweak Y-offset #-4 R1*3
  \tweak Y-offset #-3 r2
  \tweak Y-offset #-3 r4.\fermata r8 % 3
  \tweak Y-offset #-4 R1* 6
  \tweak Y-offset #-3 r1_\fermata \bar "||"
}


vocalsA = {
  r4
  d,4 _\markup{\hspace #-3 Elias:}  f a d4. d8 d4 f,8 f16 g
  a4 a r8 d,8 d e f2 e4._\fermata a,8
  d4 d8 e f g a b-flat c4. c8 f-sharp,4 f-sharp
  g2 c-sharp,
  r1
  d'1 a2 a4 a4 a1\fermata \bar "||"
}

lyricsA =  \lyricmode {
  So wahr der Herr, der Gott I -- sra -- els, le -- bet, vor dem ich ste -- he
  Es soll die -- se Jah -- re we -- der Tau noch Re -- gen kom -- men,
  Ich sa -- ge es denn.
}

BassA = {
  \init
  \tempo "Grave" 4=60
  R1
\inLineOssiaAbove \vocalsA \lyricsA \bassA
}
CelloA = \BassA

% einleitung = \include "typeset.ly"