\book {
  \paper{ tagline = ##f }
  \bookOutputName \pyanoraOutputName
  \score {
    \layout {
      indent = 0
      \context { \Staff \accidentalStyle modern-cautionary
      }
    }
      \new Staff \with { midiInstrument = "acoustic grand" }
      \transpose c \pyanoraTransposeTo  \relative c,{
        \pyanoraSetTempo
        \pyanoraSheetMusic
      }
  }
}
