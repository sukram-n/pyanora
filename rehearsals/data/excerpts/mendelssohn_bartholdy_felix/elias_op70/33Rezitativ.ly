\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {33  \smallCaps "Rezitativ"}}}
upperMusicInstrumentName = \VclKb
lowerMusicInstrumentName = ""
init = {\key c \major \clef bass \time 4/4 }


%--------------------------------------------------------------------------

VocalsA = {
  \init
  c4 ^\markup{ Elias } g8
  g8 b-flat4 ( a-flat8 ) g8 % 2
  a-flat4. a-flat8 d-flat4. d-flat8 % 3
  d-flat4 e-flat,4 r8 e-flat8 g8
  b-flat8 % 4
  d-flat4. d-flat8 c4 b4 % 5
  c4 r8 c16 b-flat16 b-flat4
  a-flat4
  a-flat4 g8. f16 f2 % 7
  e-flat4. e-flat8 e-flat4 d4 % 8
  g2 r2 % 9
  r2 r4 r8 \clef "treble" d''8 ^\markup{\hspace #-5 Solo Sopran}
  d2 g,2 % 11
  R1*2 % 13
  r2 d'4 b8 g8 % 14
  g'2 r2 % 15
  r4 e4 b4 c8 c8 % 16
  c2 g4. g8 % 17
  g4. g8 f-sharp4 a4 % 18
  c4 e4 d4 d4 % 19
  g1 ~
  g4 c,4 c4. b8 % 21
  d1 \fermata % 22
  R1  % 23
  r2  r4 r8 a8 \pp % 24
  a4 a8 a8 a4 f-sharp4
  \mark \markup{ \fontsize #-5 \fermata}
  R1*2 % 27
  b8. b16 d-sharp8. d-sharp16
  f-sharp2 \fermata \bar "|."
}


LyricsA = \lyricmode {
  Herr, es wird Nacht  um mich, sei du nicht fer -- ne!
  Ver -- birg dein Ant -- litz nicht von mir.
  Mei -- ne See -- le  dür --    stet nach dir,
  wie ein dür --  res Land!
  Wohl an denn, ge  -- he hin
  aus, und tritt auf den Berg vor den Herrn
  denn sei  -- ne Herr --  lich  -- keit er schei --  net ü  -- ber dir!
  Ver -- hül -- le  dein Ant -- litz, denn es naht der Herr.
}

BassA = {
  \init
  e,2 \p r2 % 2
  f2 r2 % 3
  g2 r2 % 4
  R1 % 5
  a-flat,1 ~ % 6
  a-flat1 % 7
  a-flat2 r2 % 8
  \tempo "Andante" 4=72
  <<
    \new Voice
    {
      g1 ~ % 9
      g1
      R1
    }
    \new Voice{
      s1 s4\< s4 s4\>s8 s16 s32 s32\! s1
    }
  >>
  \tempo "Allegro" 2=92
  g'16 \f g16
  g16 g16 g4:16
  g2 :16 % 12
  g4 g4 g4 g4 % 13
  f4 r4 r2 % 14
  r4 e4 \f e4 e4 % 15
  e4 r4 r2 % 16
  r4 f4 \f r4 g,4 \p % 17
  a1 ~ % 18
  a1 \< % 19
  b2 ( \> c2\! )
  g1 ~ % 21
  g1 \fermata % 22
  \tempo "Lento"
  f-sharp'4 \pp^\markup{\italic ten.} r4 r2 % 23
  e4 r4 r2 % 24
  d-sharp4 r4 r2 \fermata % 25
  e4 r4 r2 % 26
  c4 r4 r2 % 27
  b4 r4 r2 \fermata \bar "|."
}


%---------------------------------------------------------------------------
\include "combine_and_reset.ly"

xxxiiiRezitativ = \include "typeset.ly"
