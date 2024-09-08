init = {
  \key a \minor
  \time 4/4
  \clef bass
}
toc_titel = \markup{\smallCaps{ 6 Rezitativ}}
Titel = \markup{\bold\huge {"Nr." \toc_titel}}
mainInstrumentName = \VclKb

%------------------------------------------------------------------------------

cello =  {
  \init
  c1\p ~ c2 a ~a g
  d-sharp4  e4
}

kontrabass = {
  \init
  R1 *3
  r2
}


CelloA = {
  \cello
  b2 ~ b  g-sharp2 ~ % 3
  g-sharp2
  a2 ~ a4\tempo "Andante"   b4  c-sharp4  d4 ~ % 6
  d4  g,2\tempo "Recitativo"  r4 r2  a4 ( \p  d4 ) \bar "||"

}
BassA = {
  \kontrabass
  b,2 ~ b  g-sharp2 ~ % 3
  g-sharp2
  a2 ~ a4\tempo "Andante"   b4  c-sharp4  d4 ~ % 6
  d4  g,2\tempo "Recitativo"  r4 r2  a4 ( \p  d4 ) \bar "||"

}

VocalsA =
{
  \init
  \clef violin
  r4^\markup{Solo Alt} r8 c' c4 g4
  r8 g16 g16 a8. g16 g8 f-sharp8 r8
  f-sharp d f-sharp a c c b r b16 b16
  b8  f-sharp8 r16  g16  e16
  d-sharp16  f-sharp4 r4 % 2
  f-sharp8  f-sharp16
  f-sharp16  d-sharp8  b8  b'8  e,8
  r8  e16  f-sharp16 % 3
  g-sharp8  a8  b8  g-sharp16  e16
  c-sharp'4  c-sharp8  b16  a16 % 5
  d8  a8  a8.  a16  g4
  f-sharp4 % 6
  r8  d16  d16  b'2  g8
  f-sharp8 % 7
  e4  d4 r2 \bar "||"
}

LyricsA = \lyricmode {
  \set ignoreMelismata = ##t
  E -- li -- las!
  ge -- he weg von hin -- nen,
  und wen -- de dich gen Mor -- gen,
  und ver -- birg dich am Ba -- che Crith! Du sollst vom Ba -- che trin -- ken, und die
  Ra -- ben wer -- den dir Brod brin -- gen des Mor -- gens und des A -- bends, nach
  dem Wort dei -- nes Got -- tes.
}
