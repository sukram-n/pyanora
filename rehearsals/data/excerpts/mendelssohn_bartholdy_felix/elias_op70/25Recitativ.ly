\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {25  \smallCaps "Rezitativ"}}}
init = { \clef bass \time 4/4 \key a \major \partial 2.}

%------------------------------------------------------------

BassA = {
  \init
  \inLineOssiaAbove {
    \clef violin
    c-sharp'8. _\markup{\hspace #-9 Solo Tenor} e16 e4 a,4 % 1
    r8  a8 a8 a8 d8
    d8 f-sharp16 d16 d16 e16
    % 2
    d8 c-sharp8 r4 a4 a8
    b8
  } \lyricmode{
    Du Mann Got -- tes, lass mei -- ne Re -- de et -- was
    vor dir gel -- ten! So spricht die
  } {
    \tweak Y-offset #-4 r4
    \tweak Y-offset #-4 r2
    \tweak Y-offset #-4 R1
    \tweak Y-offset #-4 R1
  }
}

VocalsB = {
  % 3
  \key a \major
  c-sharp'8. d16 c-sharp8 r16
  c-sharp16 c-sharp8 g-sharp8 g-sharp8 a8
  % 4
  b8. b16 b4. e-sharp,8 r8
  e-sharp16 e-sharp16 % 5
  e-sharp8 e-sharp16 f-sharp16 g-sharp8 a8
  f-sharp4 r8 f-sharp8 % 6
  g16 g16 g16 d16 b'8.
  b16 b8 a-sharp8 r16 a-sharp16
  a-sharp16 a-sharp16 % 7
  b4 r16 b16 b16 b16

  b-sharp8 b-sharp8 r16 b-sharp16
  b-sharp16 b-sharp16 % 2
  f-sharp'4 c-sharp8 r8 r8
  d-sharp8 a8 g-sharp16 f-sharp16 % 3
}

LyricsB = \lyricmode {
  Kö -- ni -- gin:
  E -- li -- as ist des  To -- des schul -- dig
  und sie sam -- meln sich wi -- der dich,
  sie stel -- len dei -- nem Gan -- ge
  Ne -- tze und zie -- hen aus, dass sie dich

  grei -- fen, dass sie dich töt -- ten!
  So ma -- che dich
}

BassB = {
  \clef bass
  e-sharp,,1 -> % 4
  d4 ( \sf \> c-sharp4 ) \!r2 % 5
  r2 r8 a8 ~ -. \p a8 -. r8 % 6
  b8 r8 r4 r8 c-sharp8 ~ \cresc c-sharp8\! -. r8 % 7
  r4 d8 r8
  r4 d8\f r8

  r4 r8 c-sharp8\ff b-sharp8
  r8 r4

}





BassC = {
  \break
  \inLineOssiaAbove {
    \clef violin
    e-sharp'8. g-sharp16 c-sharp16
    c-sharp16 c-sharp16 g-sharp16
    b4 a4 % 4
    a8 \rest  a16 a16 c-sharp8 f-sharp,16
    f-sharp16  a4 g-sharp8 \fermata  g-sharp8
  }
  \lyricmode {
    auf und wen -- de dich von ih -- nen,
    ge -- he hin in die Wü -- ste! Der
  }{
    \tempo "Lento"
    g'1 \rest
    g2 \rest
    g4.\rest _\fermata
    \tempo "Andante sostenuto" 4=63
    g8\rest
  }

  \clef bass
  a,,1 -\pp
  a1 % 7
  e'2 a4. ( g-sharp8 ) % 8
  f-sharp2 ~ f-sharp8 f-sharp8 ( e8
  d8 ) % 9
  \break
  c-sharp4 ( -\< b4 ) a-sharp4. ( -- -\> -\! b8
  ) -. -\!
  f-sharp'2 b2 % 11
  b,4 ( -\p c-sharp4 ) d2 ( ~ -\< % 12
  d4 -\! -\> d-sharp4 ) -\! e2 -\pp % 13
  a,1~ -\< % 14
  \break
}


VocalsD = {
  \clef bass
  r2 r4 r8
  e,16 ^\markup{Elias} e16 % 15
  a8. b16 c-sharp8 g-sharp8 r4
  c-sharp,4 % 16
  a'4 g8 g8 f-sharp4 r4 % 17
  d'4 b8 a8 g-sharp4 f-sharp8
  f-sharp8
}
LyricsD = \lyricmode {
  Blei -- be hier, du Kna -- be, der Herr sei mit euch!
  Ich ge -- he hin in die
}
BassD = {
  a2 -\sf r4
  \tempo "Rezitativo"
  a4 -\p % 15
  r2 e-sharp'4 r4 % 16
  f-sharp4 ( c-sharp4 ) r4 d4
  R1

}

BassG = {
  \inLineOssia {
    f-sharp4 c-sharp4 r2 \bar "||"
  }\lyricmode{
    Wü -- ste.
  }{
    \tweak Y-offset #-4 R1
  }
  \bar "||"
  \tempo "Adagio" 4=66
  \time 3/4
  c-sharp8 -\p  r8 -\< c-sharp8
  r8 -\! r8  c-sharp8 \cresc

  d8\! r8 d8 r8 r4 % 21
  b8 \dim r8\! b8 r8 r8 b8 % 22
  c-sharp8 r8 c-sharp8 r8 r4 \bar "||"
}

CelloB = {
  \init
  \clef bass
  r4 r2
  a1 ^\markup{ Vcl.} \pp % 2
  r4 a2 r4 % 3
}

CelloC = \BassC

CelloE = {
  c-sharp1^\markup{Vcl.} ~ -\p % 4
  c-sharp2 ~ c-sharp4. \fermata % 5
  \tempo "a tempo"
  r8
}


\include "combine_and_reset.ly"

xxvRezitativ = \include "typeset.ly"
