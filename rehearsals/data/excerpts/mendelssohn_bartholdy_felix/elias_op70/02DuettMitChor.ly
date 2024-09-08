toc_titel = \markup{\smallCaps "2 Duett mit Chor" }
Titel = \markup{\bold\huge  {"Nr." \toc_titel }}

init = {
  \clef bass
  \key a \minor
  \time 2/4
  \partial 4
}
%--------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Sustenuto ma non troppo" 8=100
  <<
    <<
      \new Voice {
        \voiceOne
        \clef bass  \tweak Y-offset #1 r4 R2 R2
      }
      \new Voice = "HerrHoere" \with {
        fontSize = #-3
        autoBeaming = ##f
        \override Stem.length = #4
      } {
        \voiceThree
        \turnOnGrey
        \clef violin e4^\markup {Chor Sopran & Alt} e8 e8 d8 e16 f16 e2
      }
      \new Lyrics  \with {
        fontSize = #-3
      }
      \lyricsto "HerrHoere" {
        Herr, hö -- re un -- ser Ge -- bet!
      }
    >>
  >>
  R2
  \clef bass
  r4 ^\markup{ pizz.}  g-sharp,,8 _\pp r8 % 6
  a8 r8 r4 % 7
  e'8 r8  c'8 r8 % 8
  r4  d,8 r8 % 9
  e8 r8  g-sharp,8 r8
  a8 r8 r4 % 11
  f-sharp'8 r8 r4 % 12
  g8 r8  e8 r8 % 13
  b8 r8 r4 % 14
  e8 r8 r4 % 15
  a,8   d8  g8  a8  % 16
  b8 d,8 \rest r4 % 17
  e8 r8  d-sharp8 _\sf r8 % 18
  e8 r8 r4 % 19
  e8 r8  d-sharp8 _\sf r8
  e8 r r4 % 21
  r4  g,8 _\p r8
  a8 r8 r4 % 23
  d8 r8 r4 % 24
  R2 % 25
  r4  f8 _\p r8 % 26
  e8 r8  d8 r8 % 27
  g8 r8  g8 r8 % 28
  f8 r8  e8 _\cresc
  r8\! % 29
  a8 r8 r4
  r4  e8 r8 % 31
  f8 r8  d8 _\p r8
  \mark #1
  e8 r8  c'8 d,8 \rest % 33
  r4  d8 r8 % 34
  d8 r8  c8 r8 % 35
  r4  d8 r8 % 36
  e8 r8  a8 r8 % 37
  r4  a,8 _\p r8 % 38
  b8 r8  b8 r8% 39
  r4  e8 r8
  a8 r8  c,8  d8 % 41
  e8 r8  e8 r8
  \mark 2
  b'8 \cresc r8 b,8 r8 % 43
  r4  e8 _\p r8  % 44
  a,8 r8 r8  b8
  \noPageBreak% 45
  c8 r8 r8  d8  % 46
  e8 r8 r8  e8  % 47
  a,8 r8 r4  % 48
  a'8 r8  e8 r8  % 49
  a,8 r8 r4
  a'8 r8  e8 \dim
  r8  % 51
  a8 r8  e8 r8  % 52
  a,8 _\pp r8  a8 r8  % 53
  a8 r8  a8 r8  % 54
  a8 r8 r4 ^\fermata \bar "|."
  \pageBreak
}

CelloA = \BassA
