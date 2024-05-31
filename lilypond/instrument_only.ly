\book {
  \paper{ tagline = ##f }
  \bookOutputName \outputName
  \score {
    \layout {
      indent = 0
      \context { \Staff \RemoveAllEmptyStaves }
    }
      \new Staff \with { midiInstrument = "acoustic grand" }
      \transpose c \transposeTo  \relative c,{
        \setTempo
        \instrument
      }
  }
}
