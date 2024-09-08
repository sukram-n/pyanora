\include "reset.ly"
Titel= \markup{\bold\huge {"Nr." {21  \smallCaps "Arie"}}}

mainInstrumentName = \VclKb
additionalInstrumentName = "Kb."

init = {\key d \major \time 3/8 \clef bass}

%--------------------------------------------------------------------------

CelloA = {
  \init
  \tempo "Adagio" 8=80
  b4. ~ \p^\markup{\hspace #-5 Vcl.}|  % 2
  b4. ~ |% 3
  b4. ~ |% 4
  b4. |% 5
  f-sharp4.| % 6
  b4. ~ \pp|
  % 7
  b4. ~| % 8
  b4. |% 9
  f-sharp4. ~|
  f-sharp4. \cresc|  % 11
  g4.\! |% 12
  a4. |% 13
  a-sharp4.| % 14
  b4. ~ \p| % 15
  b4. ~ |% 16
  b4. ~ |% 17
  b4. |% 18
  a,8 a8 a8| % 19
  b8 b4|
  c-sharp8 c-sharp8 c-sharp8| % 21
  d8 ( d4  |% 22
  d-sharp8 ) d-sharp8 d-sharp8| % 23
  e-sharp4.  |% 24
  f-sharp8[ ( a,8 )]  c-sharp8| % 25
  d4. |% 26
  b4 c-sharp8 |
  f-sharp4. ~ |% 28
  f-sharp4. ~ |% 29
  f-sharp4.|
  b,4. \sf |% 31
  e4. ~ |% 32
  e4. |% 33
  e16 e16 \cresc  e16\! e16 e16 e16 |% 34
  d8 (  g,4\sf ) |% 35
  c4 \f a'8\p ( |% 36
  f-sharp4 e8 ) |% 37
  d4. |% 38
  a4 ( \sf g8 ) |% 39
  f-sharp4 \p r8|
  g4. ~ \pp |% 41
  g4. |% 42
  e''4.( \cresc |% 43
  e-sharp4.\! ) |% 44
  \mark \default
  f-sharp4. \f |% 45
  d,4. |% 46
  e4. \p |
  r8 f-sharp8 ( e8 ) |% 48
  d8 ( \cresc d-sharp8\! b8 ) |% 49
  e8 e4 \p |
  f-sharp4.  |% 51
  g8 ( f-sharp8 \cresc e8\! )  |% 52
  d-sharp8 ( c-sharp8 b8 )  |% 53
  e8 e8 (  a8\p ) | % 54
  d,4 ( g8 ) | % 55
  f-sharp4. | % 56
  b4.~ |
  b4. \sf | % 58
  b4. ~ \p | % 59
  |b4. \sf |
  |b4. ~ \pp | % 61
  |b4. ~  |% 62
  \tempo "Pìu Adagio"

  b8 r8 r8  |% 63
  r4.  |% 64
  f-sharp4. ( \pp | % 65
  b,4 ) r8 |
}
BassA = {
  \init
  \tempo "Adagio" 8=80
  R4.* 5
  R4.* 6_\markup{\fontsize #-3 {Solo Sopran}}
  \inLineOssiaAbove {
    \voiceOne
    \once \override Staff.Clef.color=\mygrey
    \clef violin
    e'''8 e16 c-sharp a g f-sharp4 r8
  } \lyricmode{
    merk -- test auf sein Ge -- bot!
  }{
    \voiceFour
    \tweak Y-offset #-4 R4.
    \tweak Y-offset #-4 r8
    \clef bass
    f-sharp,,8 -\p f-sharp8 % 14
  }
  \clef bass b,,8
  r8 r8
  R4.*3 % 18
  a8 \p a8 a8 % 19
  b8 b4
  c-sharp8 c-sharp8 c-sharp8 % 21
  d8  d4 \cresc % 22
  d-sharp8\!  d-sharp8 d-sharp8 % 23
  e-sharp4. \f\> % 24
  f-sharp8[ ( a,8 )] \p c-sharp8 % 25
  d4. % 26
  b4  c-sharp8\pp % 27
  f-sharp,8 r8 r8 % 28
  R4.*2
  b4.\sf % 31
  R4.*2 % 33
  e16 \crescOD e16\cresc       e16\! e16 e16 e16 % 34
  d8 (  g,4\sf ) % 35
  c4\f  a'8\p ( % 36
  f-sharp4 e8 ) % 37
  d4. % 38
  a4\sf ( g8 ) % 39
  f-sharp4\p r8
  g4.\pp~
  g4.~
  \crescOD g4.\cresc ~
  g4.\!
  d'4.\f~
  d4.
  e4.\p
  r8 f-sharp8 ( e8 ) \crescOD % 48
  d8\cresc (  d-sharp8\!
  b8 ) % 49
  e8 e4\p
  f-sharp4. % 51
  g8 ( \crescOD f-sharp8\cresc
  e8\! ) % 52
  d-sharp8 ( c-sharp8 b8 ) % 53
  e8 e8 (  a8\p ) % 54
  d,4 ( g8 ) % 55
  f-sharp4. % 56
  b,4 r8
  R4.
  b4\p r8
  R4. R4. * 2
  \bar "||"
  \tempo "Più Adagio"
  R4. * 4
  \bar "||"
}

BassB = {
  \time 4/4
  \clef bass \key d \major
  r2 g2\pp~ |
  g f-sharp~ |
  f-sharp g\< |
  g-sharp\! \crescOD r4\cresc a |
  a-sharp2\sf r2|
  \bar "||"
  \time 3/4
  \key b \major
}
CelloB = \BassB

VocalsB = {
  \break
  \key d \major
  \clef violin

  r8^\markup{Solo Sopran} f-sharp f-sharp f-sharp b2  |
  b8. b16 b8 a-sharp d8. c-sharp16 c-sharp4|
  r4 f-sharp,4 b16 b16 b4 b8|
  e,8. e16 e g-sharp b d d c-sharp c-sharp8 r4|
  c-sharp4^\f f-sharp,8. e'16 e2
  \bar "||"
  \time 3/4
  \key b \major
  \break
  % \stopStaff
  %\once \override Score.TimeSignature.break-visibility = ##(#f #f #f)
}
LyricsB = \lyricmode{
  So spricht der Herr,
  der Er -- lö -- ser I -- sra -- els,
  sein Hei -- li -- ger zum Knecht, der un -- ter den Ty -- ran -- nen ist,
  so spricht der Herr
}

BassC =  {
  \break
  \clef bass
  \tempo "Allegro maestoso" 4=132
  r8.\ff b16 b2 % 72
  d8. \rest d-sharp16 d-sharp2 % 73
  r4 f-sharp2 -\p % 74
  b,8. ( -. b16) -. b2 ( ~ % 75
  b8. b16 ) -. b2 ( ~ -\< % 76
  b8. b16 ) -. -\! e4 ( -\sf d-sharp4
  ) -\> % 77
  c-sharp4..\! ( -- c-sharp16)-.[ (  -\p d-sharp8. -- e16] ) -. % 78
  f-sharp2. % 79
  f-sharpsharp8. ( -- \< f-sharpsharp16 -. ) g-sharp2\sf
  a-sharp8. ( -- a-sharp16 -.) -\sf b2 % 81
  r4 f-sharp2 \p % 82
  b,8. ( -- b16 -. ) b2 ~( % 83
  b8.  b16) -. b2 ( ~ % 84
  b8. b16 ) -. b'4 ( a-sharp4 ) % 85
  g-sharp4 -\p g-sharp4 ( f-sharp4 ) % 86
  e-sharp4.. ( -- e-sharp16-.)[ e-sharp8. -- (  e-sharp16 -.] )% 87
  \crescOD c-sharp4 \cresc c-sharp4\! (
  d-sharp4 ) % 88
  e-sharp8. ( -- e-sharp16 ) -. e-sharp8. ( --
  c-sharp16 ) -. d-sharp8. ( -- e-sharp16 ) -. % 89
  f-sharp4 r4 a-sharp,4 ( -\p
  d-sharp4 ) r4 b4 ( % 91
  c-sharp2. ) % 92
  f-sharp4.. ( -- f-sharp16)[ -. -\< f-sharp8. ~ --
  -\! f-sharp16 -.] % 93
  f-sharp4 \f ^\markup{\dynamic sf} c-sharpsharp4-0\sf ( a-sharp4 ) % 94
  d-sharp4 ( a-sharp4 ) b4 \p
  c-sharp8. ( -. c-sharp16) -. c-sharp8. ( -. c-sharp16)
  -. c-sharp8. c-sharp16 % 96
  c-sharp8. c-sharp16 c-sharp8. \cresc
  c-sharp16\! c-sharp8. c-sharp16 % 97
  c-sharp2.
}
CelloD = {
  % 95
  f-sharp,8. \f f-sharp'16 f-sharp8.  f-sharp16
  f-sharp8. f-sharp16 % 99
  f-sharp4 r4 r4
  f-sharp8. \f f-sharp16 f-sharp8. f-sharp16
  \p f-sharp8. f-sharp16 % 101
  f-sharp4 r4 r4

}
BassD = {
  % 95
  \mark \default
  f-sharp,2 r4 R2. f-sharp2 r4 R2.
}


BassE = {
  d-sharp'4 d-sharp4 (
  c-sharp4 ) % 2
  b-sharp2 ( c-sharp4 ) % 3
  d-sharp2 ( \cresc c-sharp4\! ) % 4
  b-sharp2. \sf % 5
  c-sharp2 (\p  \>
  a4 ) % 6
  b2.  % 7
  e2. ~\pp % 8
  e2. ~ % 9
  e4 e'4 ( d-sharp4 )
  c-sharp4 ( b4 a4 ) % 11
  g-sharp2. ~ \cresc% 12
  g-sharp2.\! % 13
  a2. (\p\cresc % 14
  b-sharp,2.\! ) % 15
  c-sharp4 ( \sf g-sharp'4\p c-sharp,4 ) % 16
  b4 ( c-sharp4 b4 ) % 17
  a-sharp4 ( f-sharp'4 a,4 ) % 18
  g-sharp4 ( _\< b4 g4 ) -\! % 19
  f-sharp8. f-sharp'16 f-sharp8.\cresc f-sharp16\!
  f-sharp8. f-sharp16
  f-sharp8. f-sharp16 f-sharp8. f-sharp16
  f-sharp8. f-sharp16
  \mark \default
  f-sharp4 r4 r4 % 22
  \pageBreak
  R2. % 23
  r8. b,16\ff b2 % 24
  r8. d-sharp16 d-sharp2 % 25
  r4 f-sharp2\p % 26
  g-sharp,2 ( b4 ) % 27
  d-sharp2 ( c-sharp4 ) % 28
  b2 ( d-sharp4 ) % 29
  f-sharp2 ( e4 )
  d-sharp2. (\cresc % 31
  e2.\! ) ~ % 32
  e4 e4 (\p e-sharp4 ) % 33
  f-sharp2. % 34
  b4 ( g-sharp4 f-sharp4 ) % 35
  e-sharp4 ( f-sharp4 e4 ) % 36
  d-sharp4 ( \cresc c-sharp4\!
  b4 ) % 37
  e2. ( % 38
  e4 )\p e-sharp4 ( \cresc d-sharp4 )\! % 39
  c-sharp4 ( f-sharp4 e4 )

  d-sharp4 r4 e4 % 41
  f-sharp4 r4 f-sharp4 _. % 42
  b,8.\ff b16 b8. b16
  b8. b16 % 43
  b'4 r4 r4 % 44
  r8. b16\ff b8. b16
  b8. b16 % 45
  b4 r4 r4 % 46
  r8. b,16\ff b8. b16 b8.
  b16 % 47
  b'4 r4 r4 % 48
  R2. % 49
  d-sharp,2. (\pp _\<
  e2. -\! \cresc % 51
  c-sharp2.\! ) % 52
  f-sharp,2. ~ % 53
  f-sharp2. % 54
  b8.\ff b16 b8. b16
  b8. b16 % 55
  b8. b16 b8. b16 b8.
  b16 % 56
  b2
  <<
    \new Voice \with { fontSize = #-3 \turnOnGrey }{
      \voiceOne
      b'8.^\markup{\hspace #-3 Corni} b16% 57
      b4 b4 b4
    }
    \new Voice{
      \voiceFour
      r4 R2.
    }
  >>
  \bar "||"
  % 58
}


\include "combine_and_reset.ly"
xxiArie = \include "typeset.ly"
