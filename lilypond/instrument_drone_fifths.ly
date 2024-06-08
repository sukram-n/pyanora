\book {
  \paper{ tagline = ##f }
  \bookOutputName \outputName
  \score {
    \midi { }
    <<
      \new Staff \with { midiInstrument = "acoustic grand" }
      \transpose c \transposeTo  \relative c,{
        \setTempo
        \instrument
      }
      \new Staff \with { midiInstrument = "woodblock" } \relative c,{
        \metronome
      }
      \new Staff \with { midiInstrument = "accoustic grand" }
      \transpose c \transposeTo {
        \acc_drone_fifths
      }
    >>
  }
}
