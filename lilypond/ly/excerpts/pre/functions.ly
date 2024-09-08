scorePortion =
#(define-music-function
  (vMusic vLyrics mMusic lMusic)
  (ly:music? ly:music? ly:music? ly:music? )
  #{
    <<
      \context Staff = mMusicCTX \with {
        %instrumentName = \mainInstrumentName
        %\consists Metronome_mark_engraver
      } \relative c'{
        #mMusic
      }

      \context Staff = lMusicCTX \with {
        %instrumentName = \additionalInstrumentName
      } \relative c'{
        #lMusic
      }
      \context Staff = vMusicStaffCTX \with {
        \override BarLine.allow-span-bar = ##f
        \override StaffSymbol.staff-space = #(magstep -4 )
        \override StaffSymbol.thickness = #(magstep -4 )
        fontSize = #-3
        autoBeaming = ##f
        alignAboveContext = mMusicCTX
      } \relative c' {
        <<
          \context Voice = lyricsCTX \relative c' {  #vMusic }
          \new Lyrics \with {
            alignBelowContext = vMusicStaffCTX
          } \lyricsto lyricsCTX { #vLyrics }
        >>
      }
    >>
  #}
  )

inLineOssia =
#(define-music-function
  (ossia text main)
  ( ly:music? ly:music? ly:music?)
  #{
    <<
      \new Lyrics = "lyrics" \with {
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
      }
      \context Staff = "mMusicCTX" {
        <<
          \context Voice = "mainVoice" {
            #main
          }
          \context Voice = "ossiaCTX" \with {
            fontSize = #-3 \turnOnGrey
            autoBeaming = ##f
          }{
            #ossia
          }
        >>
      }
      \context Lyrics="lyrics" {
        \lyricsto "ossiaCTX" {
          #text
        }
      }
    >>
  #}
  )

inLineOssiaAbove =
#(define-music-function
  (ossia text main)
  ( ly:music? ly:music? ly:music?)
  #{
    <<
      \new Lyrics = "lyrics" \with {
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
        alignAboveContext = mMusicCTX
      }
      \context Staff = "mMusicCTX" {
        <<
          \context Voice = "mainVoice" {
            #main
          }
          \context Voice = "ossiaCTX" \with {
            fontSize = #-3 \turnOnGrey
            autoBeaming = ##f
          }{
            #ossia
          }
        >>
      }
      \context Lyrics="lyrics" {
        \lyricsto "ossiaCTX" {
          #text
        }
      }
    >>
  #}
  )

