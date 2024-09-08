Titel = \markup{\bold\huge { "Nr." \smallCaps "15 Quartett"}}

mainInstrumentName = "Vcl."
additionalInstrumentName = "Kb."

init = {
  \clef bass \time 4/4 \key e-flat \major
  \partial 2
}
%-----------------------------------------------------------------------------

CelloA =
{
  \init

  <<
    \new Voice {
      \voiceTwo
      r2 r1
    }
    \new Voice = vocalsMusic \with {
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      autoBeaming = ##f
    }{
      \voiceOne
      \clef violin e-flat4^\markup{\hspace #-7 Solo Sopran} e-flat8([ f]) g4 c8 c8 b-flat4 a-flat
    }
    \new Lyrics = vocalsLyrics \with{
      fontSize = #-3
      alignAboveContext = lMusicCTX
    }\lyricsto vocalsMusic {
      Wirf dein An -- lie -- gen auf den
    }
  >>
  \clef bass
  b-flat,,1\fermata
  R1 r2 r4\fermata r4 R1 g1\pp\fermata
  R1 r2 r4\fermata r4
  R1  c2.\pp\fermata r4
  R1  b-flat2.\fermata r4
  R1 \crescOD a-flat2.\cresc\fermata r4
  R1  e-flat2.\pp r4 R1\fermata \bar "|."
}

BassA ={
  \init
  \tempo "Pìu Adagio" 4=52
  r2 R1

  e-flat,1\pp\fermata
  R1 r2 r4\fermata r4 R1 g,1\pp\fermata
  R1 r2 r4\fermata r4 R1
  c2.\pp\fermata r4 R1
  b-flat2.\fermata r4 R1
  \crescOD a-flat2.\cresc\fermata r4 R1
  e-flat'2.\pp\fermata r4 R1\fermata
  \pageBreak
}
