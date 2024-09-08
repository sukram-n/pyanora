\include "reset.ly"

Titel= \markup{\bold\huge {"Nr." {38  \smallCaps "Chor"}}}

init = {\key f \minor \clef bass \time 4/4}

%---------------------------------------------------------------------------------


BassA = {
  \init
  \tempo "Moderato maestoso" 4=76
  f,,8 a-flat8 c8 f8 a-flat8
  g8 f8 c16 a-flat16 % 2
  f8 \sf a-flat8 -. c8 f8 a-flat8
  g8 f8 c16 a-flat16 % 3
  f8 a-flat8 c8 f8 a-flat8
  g8 f8 c16 a-flat16 % 4
  f8 a-flat8 d-flat8 f8 a-flat8
  a-flat8 g8 f16 g16 % 5
  e8 g8 c8 e8 g8
  e8 c8 g16 e16 % 6
  e-flat8 g8 b-flat8 e-flat16 g16
  a-flat,,8 c8 e-flat8 a-flat16 c16
  % 7
  d-flat,8 f8 a-flat8 d-flat8
  f8 d-flat8 a-flat8 f16 d-flat16 % 8
  c8 e8 g8 c8 f8
  c8 a-flat8 g16 f16 % 9
  c8 e8 g8 c8 f8
  c8 a-flat8 g16 f16

  c8 e8 g8 c8 e8
  d-flat8 c8 g16 e16
  \mark \default% 11
  c4 r4 r2 % 12
  a-flat2 \sf a-flat4 c4 % 13
  e-flat2 a-flat4 a4 % 14
  b-flat2 g-flat,4 g-flat'4 % 15
  g-flat4 e-flat4 a-flat8. ( -. a-flat16 ) -.
  b-flat8. ( -. c16 ) -. % 16
  d-flat4 f,4 f4 e-flat4

  d-flat4 d-flat4 d-flat4 c4 % 2
  b-flat2 a-flat2 % 3
  g8 -\sf b8 d8 g8 b8
  a-flat8 g8
  d16 b16 % 4
  g8 c8 e-flat8 g8 c8
  g8 e-flat8  d16 c16 % 5
  g8 b8 d8 g8 b8
  a-flat8 g8 f16 g16 % 6
  e-flat8 g8 c8 e-flat8 e-flat,8
  g8 c8 e-flat16 g16 % 7
  a-flat,,8 c8 e-flat8 a-flat8 a-flat,8
  c8 e-flat8 a-flat16 c16 % 8
  g-flat8 g-flat'8 e-flat8 e-flat,8
  c8 c'8 a-flat8 a-flat,16
  g-flat16 % 9
  f8 a-flat8 d-flat8 f8 a-flat8
  d-flat8 f8 a-flat16 f,16

  g8 g8 c,8 e-flat8 g,8
  d'8 g8 f16 g16 % 11
  c,8 e8 g8 c8 f8
  c8 a-flat8 g16 f16 % 12
  c8 e8 g8 c8 f8
  c8 a-flat8 g16 f16 % 13
  c8 e8 g8 c8 e8
  d8 c8 g16 e16 % 14
  \mark \default
  c8_\sempreFF e8 g8 c8 e8
  g8 e8 c16 g16 % 15
  e8 r8  r4 r2
  \pageBreak
  R1*2 % 17
  \tuplet 3/2 {a,16\p[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}

  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}

  \tuplet 3/2 {a,16[\cresc a'16\! a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}

  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}

  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {g,16[ g'16 g16]}
  \tuplet 3/2 {g,16[ g'16 g16]}
  \tuplet 3/2 {f-sharp,16[ f-sharp'16 f-sharp16]}
  \tuplet 3/2 {f-sharp,16[ f-sharp'16 f-sharp16]}
  \tuplet 3/2 {f-sharp,16[ f-sharp'16 f-sharp16]}
  \tuplet 3/2 {f-sharp,16[ f-sharp'16 f-sharp16]}

  g,8\ff g8 g8 g8
  \tuplet 3/2 {c16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16\p[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}

  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16\cresc [ c'16\! c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}

  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}

  \tuplet 3/2 {c,16[\f c'16 c16]}
  \tuplet 3/2 {c,16[ c'16 c16]}
  \tuplet 3/2 { b-flat,16[ b-flat'16 b-flat16]}
  \tuplet 3/2 { b-flat,16[ b-flat'16 b-flat16]}

  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}
  \tuplet 3/2 {a,16[ a'16 a16]}

  b-flat,8\ff b-flat8 b-flat8 b-flat8
  \tuplet 3/2 { e-flat16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {g,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 { b-flat16[ e-flat16 e-flat16]}
  \tuplet 3/2 {g,16[ e-flat'16 e-flat16]}

  \tuplet 3/2 { e-flat,16_\sempreFF [ e-flat'16 e-flat16]}
  \tuplet 3/2 { e-flat16[ e-flat'16 e-flat16]}
  \tuplet 3/2 { a-flat,,16[ a-flat'16 a-flat16]}
  \tuplet 3/2 { a-flat,16[ a-flat'16 a-flat16]}

  \tuplet 3/2 {g,16[ g'16 g16]}
  \tuplet 3/2 {g,16[ g'16 g16]}
  \tuplet 3/2 {g,16[ g'16 g16]}
  \tuplet 3/2 {g,16[ g'16 g16]}

  a-flat,2 :8 d-flat8 -> f8 -> a-flat8 ->
  f8 ->
  d-flat8 -\f d-flat' b-flat8
  b-flat,8 a-flat8_\piuF a-flat'8 g8
  g,8 % 31
  g-flat8 g-flat'8 f8 f,8 e-flat8
  e-flat'8 a-flat8 a-flat,8 % 32
  d-flat,8 d-flat'8 d-flat'8 d-flat,8
  d-flat,8\sf d-flat'8 d-flat'8 d-flat,8 % 33
  \mark \default
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}

  e-flat,8 e-flat8 \ff f8 g8 a-flat8
  b-flat8 c-flat8 d8 % 37
  e-flat8   e-flat8 f8
  g8 a-flat8 b-flat8 c-flat8 d8
  % 38
  e-flat8 e-flat,8 -. e-flat8 -. e-flat8 -.
  e-flat8 -. e-flat8 -. e-flat8 -. e-flat8 -.

  \tuplet 3/2 {es16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  a-flat,,2\sf
  \tuplet 3/2 {es'16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  \tuplet 3/2 {es,16[ e-flat'16 e-flat16]}
  a-flat,,2
  f-flat2. \sf ^\markup{\italic {ritard.} }
  f-flat'4 % 42
  e-flat1 \fermata \bar "|."
  \pageBreak
}

%--------------------------------------------------------------------------

\include "combine_and_reset.ly"

xxxviiiChor = \include "typeset.ly"
