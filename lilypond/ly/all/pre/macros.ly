Gstring = \markup{ \hspace #-0.1 \override #'(font-name . "DkgHandwriting") \fontsize #+0 I }
Dstring = \markup{\hspace #-0.2 \override #'(font-name . "DkgHandwriting") \fontsize #+0 II }
Astring = \markup{\hspace #-0.5 \override #'(font-name . "DkgHandwriting") \fontsize #+0 III }
Estring = \markup{\hspace #-0.3 \override #'(font-name . "DkgHandwriting") \fontsize #+0 IV }

pts = \(
% \parenthesize(
pte = \)

Nf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 0 }
sNf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 \with-color "grey" 0
}

Tf = \markup{
  \hspace #-0.1
  % \override #'(font-name . "DkgHandwriting")
  \fontsize #+0  \char #9792
}
sTf = \markup{
  \hspace #-0.1
  % \override #'(font-name . "DkgHandwriting")
  \fontsize #+0 \with-color "grey" \char #9792
}

If = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 1
}

sIf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 \with-color "grey" 1
}
Mf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 2
}
sMf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 \with-color "grey" 2
}
Rf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 3
}
sRf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 \with-color "grey" 3
}
Pf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 4
}
sPf = \markup{
  \hspace #-0.1
  \override #'(font-name . "DkgHandwriting") \fontsize #+0 \with-color "grey" 4
}

mainInstrumentName = ""
additionalInstrumentName=""

tReci = \tempo "Recitativo"

piuF = \markup { \italic più \dynamic f }
sempreF = \markup { \italic sempre \dynamic f }
sempreFF = \markup { \italic sempre \dynamic ff }
sempreP = \markup { \italic sempre \dynamic p }
semprePP = \markup { \italic sempre \dynamic pp }

crescOD ={ \once \override DynamicTextSpanner.style = #'none }

VclKb = \markup{ \center-column {{"Vcl."} { "& Kb."}}}

turnOnRed = {
  %  \override Rest.color = #red
  %  \override MultiMeasureRest.color = #red
}
turnOnMagenta = {
  %  \override Rest.color = #magenta
  %  \override MultiMeasureRest.color = #magenta
}
turnOnGreen = {
  %  \override Voice.Rest.color = #( green
  %  \override MultiMeasureRest.color = #( green
}
turnOnBlue = {
  %  \override Voice.Rest.color = #blue
  %  \override MultiMeasureRest.color = #blue
}
turnOnBlack = {
  %  \override Voice.Rest.color = #black
  %  \override MultiMeasureRest.color = #black
}

mygrey = #(rgb-color 0.5 0.5 0.5)
turnOnGrey = {
  \override NoteHead.color = \mygrey
  \override Stem.color = \mygrey
  \override Beam.color = \mygrey
  \override Rest.color = \mygrey
  \override Script.color = \mygrey
  \override Dots.color = \mygrey
  \override Accidental.color = \mygrey
  \override AccidentalCautionary.color = \mygrey
  \override DynamicText.color = \mygrey
  \override Slur.color = \mygrey
}

