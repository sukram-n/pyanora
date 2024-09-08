
init = {
  \clef bass
  \time 6/8
  \key g \major
}

toc_titel = \markup{\smallCaps{"8 Recitativ, Arie und Duett"}}
Titel = \markup{\bold\huge { "Nr." \toc_titel}}
mainInstrumentName=\VclKb

%-----------------------------------------------------------------------

EliasMusik = \relative {
  \clef bass
  \tempo Recitativo
  b4_\markup{\hspace #-6 Elias}  f-sharp8  a8  a8.
  g-sharp16
  % 46
}
EliasText = \lyricmode {
  Gib mir her dei -- nen
}


BassA = {
  \init
  \tempo "Andante agitato" 4.=66
  <<
    \new Voice \with {
      fontSize = #-4
      \turnOnGrey
    }\relative {
      \voiceOne
      %     \override StaffSymbol.staff-space = #(magstep -3)
      %    \override StaffSymbol.thickness = #(magstep -3)
      \clef violin b'4 ^\markup{Ob. Solo } b8 ~ b8
      b8 ( e8 ) % 2
      e4 ( d-sharp8 ) d-sharp8 ( e8 c8 )
      b4. d-sharp8 ( e8 c8 ) % 4
    }
    \new Voice{
      \voiceFour
      R2. *3
      \clef bass
      b4.\p a4 ( \cresc
      g8 \!) % 5
      f-sharp4 ( g8 ) f-sharp4 ( e8 )
    }
  >>
}


BassB = {
  \break
  d-sharp4. \f
  \tempo Recitativo
  r4
  r8  R2.
  b4 \f r8 r4 r8 % 9
  r4 r8 b4 \f r8
  c-sharp4. \pp a-sharp4. % 11
  <<
    {\crescOD s4. \cresc s4.\!}
    {f-sharp2. ~ }
  >>
  <<
    {
      f-sharp2. ^\fermata % 13
    }{
      s4.\> s4 s16 s16\!
    }
  >>
  \pageBreak
}
VocalsB = {
  \init
  \clef violin
  r4^\markup{Solo Alt} r8

  f-sharp'4.
  b,8 b16 b16
  a16 b16 c8. a16 e'8 % 8
  e4 d-sharp8 r8 b8 f-sharp16
  g16 % 9
  a8. a16 c16 b16 a16
  g16 r16 g16 f-sharp16 e16
  a-sharp16 a-sharp16 a-sharp8 a-sharp8 c-sharp4
  c-sharp16 c-sharp16 % 11
  e4 e8 f-sharp4 c-sharp8 % 12
  e4. d-sharp4. ^\fermata % 13
}

LyricsB = \lyricmode {
  Was hast du an mir ge -- tan, du Mann Got -- tes!
  Du bist zu mir her -- ein ge -- kom -- men,
  dass mei -- ner Mis -- se -- tat ge --
  dacht und mein Sohn ge -- tö -- tet wer -- de!
}

BassC = {
  \break
  \tempo "a tempo"
  R2.*3
  \bar "||"
  r4 r8 d-sharp'4. \p % 2
  e2. ~ e4. % 3
  f-sharp16  \cresc
  f-sharp16\!  f-sharp16  f-sharp16  f-sharp16
  f-sharp16  % 4
  g4.:16
  g4.:16
  f-sharp4 \f r8 f-sharp4\p r8 % 6
  g4 r8  g4 (  f-sharp8 ) % 7
  e4 ( ^>  d8 )  e4 ( ^>  d8 )
  % 8
  c-sharp4. ( _\sf  d8 ) r8  g8\p % 9
  f-sharp4 r8  f-sharp4 r8

  b,4 r8  r4 r8 % 11
  f-sharp2. _\sf % 12
  R2. * 2 % 13

  r4 r8  b4.\p % 14
  \mark #1
  e16   e16 _\<  e16  e16
  e16  e16  e4.:16 \! % 15
  e2. :16 % 16
  e2. :16 % 17
  r4 r8  e4.\p % 18
  a4  r8  a,4. (  % 19
  b4 ) r8  \crescOD b4. ( \cresc
  c-sharp4 ) r8  c-sharp4. % 21
  d16\f   d16  d16  d16
  d16  d16  d4. :16 % 22
  c4. (\p  b4. ) % 23
  c4 (  g8 )  a4 (  f8 ) % 24
  g4. ~  g4  g'8 % 25
  \crescOD c4.\cresc  g4. % 26
  a4.  e4. \sf % 27
  f4. r4  f8\p (  % 28
  g2. ) % 29
  c,4 r8 r4 r8 \mark #2
  R2.
  g2.\p % 32
  R2. % 33
  g2.\p % 34
  a4. (  d4. ) \cresc
  % 35
  d-sharp4 _\<  f-sharp8 ~ -\!  f-sharp8   e8
  (  d-sharp8 ) % 36
  e4.\p  a,4.\sf ( % 37
  b4. ) ~  b4  b8 % 38
  c4 (\p  g-sharp8 )  a4 (  b8 ) % 39
  c4 (  c-sharp8 ) \cresc
  d-sharp4\!  e8
  f-sharp4 (  g8 )
  a4.\dim % 41
  b2.\! % 42
  e,4 r8 r4  r8 R2. * 5 % 44
  R2.\fermata % 45
  \inLineOssia \EliasMusik \EliasText {
    \tweak Y-offset #-3 R2.
  }
  \bar "||"

  \tempo "Andante sostenuto" 4=58
  \time 4/4  \key e \major
  e8 (\p e8 \<  e8
  e8 )  e8\f (   e8  \>  e8
  e8 )\! % 47
  e1\p ~ % 48
  e2 ~  e8   e8 _\<  e8
  e8 -\!  % 49
  <<
    {
      e1 ~
    }{
      s4.\dim s4.\!
    }
  >>
  e4.  c-sharp8  b2\p % 51
}
CelloC = \BassC

CelloD={
  b8\pp   b8
  b8  b8 a8 a8 \cresc g-sharp8\!  g-sharp8
  f-sharp8 f-sharp f-sharp f-sharp
  g-sharp8\pp^\markup{Vcl. & Kb.} g-sharp g-sharp g-sharp
}
BassD = {
  R1
  r2
  g-sharp8 g-sharp g-sharp g-sharp
}

BassE = {
  g-sharp8 \cresc g-sharp\! g-sharp g-sharp g-sharp'8
  g-sharp8  g-sharp8 (  f-sharp8 ) % 54
  e2 \>  f-sharp2\p
  \mark #3
  b,8  \<  b8 \!  b8 \>  b8 \!
  b2 ~\pp  % 56
  b4  c-sharp4  d4 _\<  c-sharp8 (   b8
  ) \! % 57
  a2 ~  a2 ~ \dim % 58
  a4\pp  g-sharp4  c-sharp4  d-sharp4 % 59
  e1
  e8 (   g-sharp8 ) g-sharp8 ( f-sharp8 )\cresc    e8\! (
  d-sharp8  c-sharp8  b8 ) % 61
  a2\f r2
}
CelloE = \BassE

CelloF =  {
  r4 g-sharp4 (\tweak X-offset #-4 \pp
  c-sharp4  a4 ) % 63
  b2 (  e4 ) r4
}
BassF= {
  R1*2
}

BassG = {
  \bar "||"
  % 64
  \time 6/8  \key g \major
  \tempo "Andante con moto" 4.=63
  e'4 (\pp   d8 )  c4 (  b8 ) % 65
  a2. % 66
  d-sharp2. % 67
  e2. ~ _\< % 68
  e2. ~ -\! % 69
  e4.  b4.\dim
  f-sharp2.\! % 72
  R2.*6 % 74
  R2.\fermata
  R2.\fermata
  b'4 ( \cresc a8\!
  )  g4 (  f-sharp8 ) % 75
  e2. % 76
  \crescOD   a-sharp,2. \cresc % 77
  b2. ~ % 78
  b2.  % 79
  c-sharp4\f r8  f-sharp,4
  %_\markup{\column {\null\null \sans \box{"Seiten 11-13 ausklappen"}}}
  r8
  \tempo \markup{\hspace #-5 \bold "Recit."}
  R2. * 4 \bar "||"
  \mark #4
  % 81
  \time 4/4
  R1 * 3
  \inLineOssiaAbove{
    %c''4._\markup{\hspace #-6 Elias}  c8  c4  g4
    g'4  a4  f2 ^\fermata
  }\lyricmode{
    %Kin -- d-flat wie -- der
    zu ihm kom-
  }{
    %\tweak Y-offset #-3 R1
    \tweak Y-offset #-3 R1_\fermata
  }
  \bar "||"
  \time 6/8
  c'4 (\p ^\markup{ \bold\small {a tempo} }
  b8 ) \crescOD  a4 ( \cresc
  g8 ) % 85
  f4 (  e8 )  d4 (  c8 ) % 86
  b2.:16\ff  % 87
  b2. :16\pp % 88
  c2. :16 % 89
  \crescOD e2. :16 \cresc
  f2. :16 % 91
  e-flat2. :16 % 92
  d2. :16\f % 93
  d2. :16 \bar "||"
  \break
}
CelloG = \BassG

vocalsH = \absolute{
  \voiceOne
  r8\fermata
  %\tempo "Recit."
  \clef violin
  d''8^\markup{\hspace #-9 Solo Sopran}
  d''8. d''16 f-sharp''2 \clef violin g''
  \clef bass
  d'4.^\markup{\hspace #-5 Elias} b8
  a2 a4 d d2 b
  \break
}
lyricsH= \lyricmode {
  Es wird le -- ben -- dig!
  Sie -- he da, dein Sohn le -- bet!
}
bassH = \absolute{
  \mark \default
  \time 4/4
  d8\ff r8\fermata
  \tempo "Recit."
  %\tweak Y-offset #-3
  r4
  %\tweak Y-offset #-3
  r4
  \clef bass  c8\ff
  %\tweak Y-offset #-3
  r8
  %\tweak Y-offset #-3
  r4
  \clef bass b,8
  %\tweak Y-offset #-3
  r8
  %\tweak Y-offset #-3
  r2
  %\tweak Y-offset #-4
  R1
  %\tweak Y-offset #-4
  R1
}

%BassH = \inLineOssia \vocalsH \lyricsH \bassH

BassH = \bassH
VocalsH = \vocalsH
LyricsH = \lyricsH
CelloH = \BassH

BassJ = {
  \pageBreak
  \tempo "Andante a tempo" 4=76

  b2\p  c4. b8 % 99
  a4. g8 f-sharp2 ~
  f-sharp8 f-sharp8( g8 a8 ) c2\cresc
  % 101
  b2\! g2 % 102
  c2 ~\f c8 r8 r4
}

CelloJ = \BassJ

CelloK = {
  r4 c'4 ( ^\p b4 ) a4 % 104
  g-sharp4 ( a2 ) a8 ( b8 ) % 105
  c2. r4 % 106
  r4 d,,4^\p ^\< d4 d4 -\! % 107
  d1 ~ % 108
  d2.  g4
}

BassK = {
  R1*5 r2 r4 g4\p
}

BassL = {
  % 109
  a4 ( b4 ) c-sharp8 ( d-sharp8
  e4 )
  e8 ( \cresc f-sharp8
  g4 )\! d4 g,4 ~ % 111
  g1\f \dim % 112
  a4\! ( g'4 ) f-sharp2\p % 113
  g4 d4 e4 ( c4 ) % 114
  d1 \bar "|."
}
CelloL = \BassL
