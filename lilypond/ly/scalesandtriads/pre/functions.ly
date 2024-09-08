extendLV =
#(define-music-function (further) (number?)
   #{
     \\once \\override LaissezVibrerTie.X-extent = #'(0 . 0)
     \\once \\override LaissezVibrerTie.details.note-head-gap = #(/ further -8)
     \\once \\override LaissezVibrerTie.extra-offset = #(cons (/ further 8) .3)
   #} )


extendRT =
#(define-music-function (further) (number?)
   #{
     \\once \\override RepeatTie.X-extent = #'(0 . 0)
     \\once \\override RepeatTie.details.note-head-gap = #(/ further -8)
     \\once \\override RepeatTie.extra-offset = #(cons (- 0.5 (/ further 3)) .1)
   #} )

scorePortion =
#(define-music-function
  (vMusic vLyrics mMusic lMusic)
  (ly:music? ly:music? ly:music? ly:music? )
  #{
    <<
      \\context Staff = mMusicCTX \\with {
        %instrumentName = \\mainInstrumentName
        \\consists Metronome_mark_engraver
      } \\relative c'{
        #mMusic
      }

      \\context Staff = lMusicCTX \\with {
        %instrumentName = \\additionalInstrumentName
      } \\relative c'{
        #lMusic
      }
      \\context Staff = vMusicStaffCTX \\with {
        \\override BarLine.allow-span-bar = ##f
        \\override StaffSymbol.staff-space = #(magstep -4 )
        \\override StaffSymbol.thickness = #(magstep -4 )
        fontSize = #-3
        autoBeaming = ##f
        alignAboveContext = mMusicCTX
      } \\relative c' {
        <<
          \\context Voice = lyricsCTX \\relative c' {  #vMusic }
          \\new Lyrics \\with {
            alignBelowContext = vMusicStaffCTX
          } \\lyricsto lyricsCTX { #vLyrics }
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
      \\new Lyrics = "lyrics" \\with {
        \\override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
      }
      \\context Staff = "mMusicCTX" {
        <<
          \\context Voice = "mainVoice" {
            #main
          }
          \\context Voice = "ossiaCTX" \\with {
            fontSize = #-3 \\turnOnGrey
            autoBeaming = ##f
          }{
            #ossia
          }
        >>
      }
      \\context Lyrics="lyrics" {
        \\lyricsto "ossiaCTX" {
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
      \\new Lyrics = "lyrics" \\with {
        \\override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
        alignAboveContext = mMusicCTX
      }
      \\context Staff = "mMusicCTX" {
        <<
          \\context Voice = "mainVoice" {
            #main
          }
          \\context Voice = "ossiaCTX" \\with {
            fontSize = #-3 \\turnOnGrey
            autoBeaming = ##f
          }{
            #ossia
          }
        >>
      }
      \\context Lyrics="lyrics" {
        \\lyricsto "ossiaCTX" {
          #text
        }
      }
    >>
  #}
  )

