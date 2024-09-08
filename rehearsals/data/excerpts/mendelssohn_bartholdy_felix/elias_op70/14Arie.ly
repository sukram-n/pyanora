Titel = \markup{}
additionalInstrumentName = "Kb."
mainInstrumentName = "Vcl."

init = { \key a \major \time 4/4 \clef bass}

%-----------------------------------------------------------------------------

CelloA = {
  \tempo "Adagio" 4=63
  \init
  <<
    \new Voice {
      \voiceOne
      \tempo "Adagio" 4=63
      s2 d,2_\markup{\hspace #-11 Vcl. I u. II}
      d2._\< e-flat4\!~ e-flat
    }
    \new Voice {
      \voiceTwo
      r2 d,2\p g2. e-flat4~es
    }
  >>
  d\<^( e-flat b-flat')~\sf
  \bar "||"
  \key e-flat \major
  %\tempo "Adagio" 4=63
  b-flat1\p~^\markup{
    \override #'(font-name . "Bitstream Vera Sans,sans-serif, Bold"){
      \hspace #-11    \bold\huge {"Nr." \smallCaps  {"14 Arie"}}
    }
  }
  \stemUp b-flat8\stemNeutral  f''( d \dim  c\! b-flat a-flat g f)
  e-flat1~es2
  \crescOD c\cresc
  <<
    {s8\< s4\> s8\!}
    \new Voice {f,2}
  >>
  g4\!( a-flat) a-flat'2\p~as8( g f e-flat )~es2~es~es
  c
  <<
    \new Voice{s8\< s4\> s8\!}
    \new Voice {f,2}
  >>
  g4( a-flat)
  a-flat'2~  \crescOD a-flat8\cresc ( g f e-flat )
  e-flat4( c) b-flat8.( a-flat16) a-flat4\!
  %\staffOff



}
BassA = {
  \tempo "Adagio" 4=63
  \init
  R1
  R1 r2 r4 b-flat,~\sf
  \bar "||"
  \key e-flat \major
  b-flat1^\markup{
    \override #'(font-name . "Bitstream Vera Sans,sans-serif, Bold"){
      \hspace #-10    \bold\huge {"Nr." \smallCaps  {"14 Arie"}}
    }
  }
  ~\p
  <<
    {
      b-flat1
    }
    \new Voice {s8 s8 s8 \dim s8 \! s8 s8 s8 s8}
  >>
  e-flat1 ~ e-flat2 \crescOD c\cresc
  f,2\espressivo
  g4\!( a-flat)~ a-flat2\p e-flat'2~ e-flat2 ~ e-flat ~ e-flat c
  f,2\espressivo
  g4( a-flat)
  a-flat2 \crescOD e-flat' \cresc e-flat4(\! c ) b-flat8.( a-flat16) a-flat4

}
BassB = {
  g2\f
  \crescOD f4\dim e-flat4
  %\tweak Y-offset #-2
  \p\fermata
  r2 c'4\p d g,1~\cresc g4\! f' e-flat2\sf ~ e-flat4 e\dim f2\! b-flat, r

}
CelloB = \BassB

CelloC = {
  r2  f2\p( g~g8)
}
BassC = {
  R1 g2\p~g8
}

BassD = {
  r8 r4

  r2 \crescOD f2~\cresc
  f2\!~ f8 g-flat'( f e-flat)
}

CelloD = \BassD

CelloE = {
  d-flat1\ff \> % 19
  c-flat'2\p b-flat4.  f'8


  f8 ( g-flat8 )  \crescOD g-flat8\cresc ( a-flat8 ) a-flat8 (
  b-flat8 ) b-flat8 ( c8 ) % 21
  c8 ( e-flat8 ) e-flat8 ( d8 )
  d4\f a-flat,4 \dim % 22
  g2\p c2 ~ % 23
  c8 \< d8 ( e-flat8 f8 ) -\!
  f4 ( \> e-flat4 ) -\! % 24
  a-flat2 ~\p a-flat8 a-flat,8 ( g8
  f8 ) % 25
  b-flat2 e-flat4. ( \< d8 ) -\! % 26
  c8 ( f8 g8  a-flat8 ) g2\cresc  % 27
  r4\! e-flat4 (\p a-flat,4. ) r8 % 28
  r4 r8 b-flat'8 ( a8 f8 )
  a-flat4 % 29
  b-flat,2 e-flat4 r4
  r2 e-flat8 \mf c'4 ( b-flat8 % 31
  a-flat8 g8 f8 e-flat8 )
  f2\p ~ % 32
  f2 g4 a,4\pp % 33
  b-flat4. ( a-flat8 ) g4 ( a-flat4 ) % 34

  e-flat1 ^\fermata\pp \bar "|."
}

BassE = {
  d-flat1\ff\>
  c-flat2\p \crescOD b-flat2 ~
  \after 4 \cresc
  b-flat1 ~
  \after 2 \f
  \after 2. _\markup{\hspace #-1 \italic dim.}
  b-flat2.

  a-flat4 % 22
  g2\p c2 ~ % 23
  c8 \< d8 ( e-flat8 f8 ) -\!
  f4 ( \> e-flat4 ) -\! % 24
  a-flat2 ~\p a-flat8 a-flat,8 ( g8
  f8 ) % 25
  b-flat2 e-flat4. ( \< d8 ) -\! % 26
  c2 g2\cresc  % 27
  r4\! e-flat'4 (\p a-flat,4. ) r8 % 28
  r4 r8 b-flat8 c4 f,4 % 29
  b-flat2 e-flat4 r4
  r2 e-flat2 ~ \mf % 31
  e-flat2 e-flat2 ~\p % 32
  e-flat2 ~ e-flat4 a,4\pp % 33
  b-flat4. ( a-flat8 ) g4 ( a-flat4 ) % 34
  e-flat'1 ^\fermata\pp \bar "|."
}
