\book {
  \paper{ tagline = ##f }
  \bookOutputName \pyanoraOutputName
  \score {
    \midi { }
    <<
      \new Staff \with { midiInstrument = "acoustic grand" }
      \transpose c \pyanoraTransposeTo  \relative c,{
        \pyanoraSetTempo
        \pyanoraSheetMusic
      }
      \new Staff \with { midiInstrument = "woodblock" } {
        \pyanoraMetronome
      }
      \new Staff \with { midiInstrument = "accoustic grand" }
      \transpose c \pyanoraTransposeTo {
        \pyanoraDrone
      }
    >>
  }
}
