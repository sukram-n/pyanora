\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {35  \smallCaps "Rezitativ, Quartett mit Chor"}}}
%%\include "no_lyrics_staff.ly"

upperMusicInstrumentName=\VclKb
lowerMusicName=""
init = {\key c  \major \clef bass \time 4/4 }

%-------------------------------------------------------------------------

BassA = {
  \init
  <<
    \new Voice = Seraphim \with  {
      fontSize = #-3
      autoBeaming = ##f
      \turnOnGrey
    }
    {
      \voiceOne
      \init
      \clef violin
      e8.^\markup{\hspace #-8 Solo Alt}
      e16 e8 e16 f-sharp g8. g16 g4
      r2 r4 r8 g g8. g16 g8 a b4 b4\bar "||"
    }
    \new Lyrics \with { alignAboveContext = mMusicCTX }
    \lyricsto Seraphim
    {
      Se -- ra -- phim stan -- den ü -- ber ihm,
      und Ei -- ner rief zum An -- dern:
    }

    \new Voice{
      \voiceFour
      \once \override DynamicText.transparent = ##t
      \tweak Y-offset #-5 R1\p \tweak Y-offset #-5 R1 \tweak Y-offset #-5 R1
    }
  >>
}


BassB = {
  \tempo "Adagio non troppo" 4=72
  R1*4 \clef bass
  c,,2 \ff a2 % 6
  g2 c2 % 7
  f2 f4 d4 % 8
  c4. ( -- c8) -. c2 % 9
  R1
  r2 r4 g'4 \ff % 11
  c,2 f4 a4 % 12
  c4. ( -- g8 ) -. g2 % 14
  R1*5
  c,2 ( \pp d2 ) % 15
  g,2. ( a4 ) % 16
  b1 % 17
  e,1\espressivo

  R1 * 3
  c'1 \p
  \mark \default
  f,2 \ff f4 f4 % 21
  c'4. (-- c8 -.) c2 % 23
  R1 * 2
  <<
    \new Voice{f,1_\markup{\hspace #-2 \dynamic ff}}
    \new Voice{s4 s4\> s2\!}
  >>% 6
  R1 * 2
  g1\pp % 2
  a1 % 3
  b-flat2 ( c2 ) % 4
  <<
    \new Voice{d1_\markup{\hspace #-2 \dynamic ff}}
    \new Voice{s4 s4\> s2\!}
  >>% 6
  R1 * 2
  g,1 _\markup{\hspace #-6 \italic sempre \dynamic pp} % 7
  c1 ~ % 8
  c1 ~ % 9
  c2.  r4
  R1\fermata % 11
  <<
    \new Voice {c2_\markup{\hspace #-3 \dynamic pp}  c2}
    \new Voice {s2 \<  s4 \> s4  \!}
  >>% 12
  \extendLV #6
  c1 \laissezVibrer \fermata  \bar "|."
}

\include "combine_and_reset.ly"

xxxvRezitativQuartettMitChor = \include "typeset.ly"

