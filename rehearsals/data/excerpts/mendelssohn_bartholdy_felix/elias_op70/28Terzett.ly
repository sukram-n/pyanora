\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {28  \smallCaps "Terzett"}}}
init = {\key d  \major \clef bass \time 2/4 }

%---------------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Andante" 8=100
  R2 *8
  R2 *24
  \inLineOssia{
    \voiceOne
    \clef violin
    e'8 [ ^\markup{\hspace #-15 Solo Sopran 1} ( a,)] a e'
    d4( c-sharp8.) d16
    d4 r8 d8
    g8([ f-sharp)] e8 d8
    c-sharp8[( b)] a d d4 c-sharp d2\bar "|."
  }\lyricmode {
    Hil -- fe dir,
    Hil -- fe kommt, den
    Ber -- gen von wel -- chen dir Hil -- fe kommt.
  }{
    \voiceFour
    R2 R2 R2 R2 R2 R2 R2
  }
  \pageBreak
}

\include "combine_and_reset.ly"

xxviiiTerzett = \include "typeset.ly"
