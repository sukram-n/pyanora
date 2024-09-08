Titel= \markup{\bold\huge {"Nr." {19  \smallCaps "Rezitativ mit Chor"}}}

init = { \key c \major \time 4/4  \clef bass }


BassA = {
  \init
  e,2 f
  g-sharp,1 g
  r4 c f-sharp,2
  r4 f2.
  e1 f2 r4 d' e( f g2)
  \bar "||"
  \key a-flat \major
  \tempo "Recitativo"
  c,1\fp ~ c2 r2 r2 c\f R1
  \bar "||"
  \break

}
CelloA = \BassA

VocalsA ={
  \init
  \clef violin
  r8 e' ^"Solo Tenor"
  e b d4 a8 c c4 b r8 b8 b  c d4 g,8 g16 g b8 d8 f8. f16
  f8 e r c e-flat e-flat d c
  c b r16 b b c d8 d b g
  g c r c g'4. b-flat,8
  a4. f'8 f4 b,
  c a g2 \bar "||"
  \key a-flat \major
  r2 r4
  \clef bass
  c,,4^"Elias" c'4. c8 c g e f g4 g8 g e-flat'8. c16 g8 e-flat g4 c,4 r4 r8 c'8
  \bar "||"
  \key a-flat \major
}

LyricsA =\lyricmode{
  Hilf dei -- nem Volk, du Mann Got -- tes!
  Es ist doch ja un -- ter der Hei -- den Gö -- tzen
  kei -- ner, der Re -- gen könn -- te ge -- ben;
  so kann der Him -- mel auch nicht reg -- nen;
  denn Gott al -- lein kann sol -- ches al -- les tun.

  O Herr!
  Du hast nun dei -- ne Fein -- de ver -- wor -- fen und zer -- schla -- gen:
  So
}


CelloB = {
  \key a-flat \major
  \tempo "Andante sostenuto" 4=66
  \clef bass
  <<
    \new Voice{
      \voiceOne
      c'4(^\markup{\hspace #-10 " Vcl. I & II"} a-flat) f4.( e-flat8)
      a-flat4( b-flat) c2
      d-flat c~c4 b-flat4~ b-flat2
      e-flat,4( f8 b-flat) a-flat4( g)
      a-flat4( d-flat) d-flat2( c) b-flat8( f g a-flat) a-flat4( g) a-flat2
    }
    \new Voice{
      \voiceTwo
      c,4\p( e-flat)
      a-flat,( b-flat) c( d-flat) e-flat2
      f4( e-flat) e-flat2~es4 d( e-flat2)
      e-flat4( d-flat) c( b-flat)
      a-flat8( f') g\cresc ( f)\! e-flat2~ e-flat\pp d4( d-flat) b-flat( d-flat) c2
    }
  >>

}
BassB = {
  \key a-flat \major
  \tempo "Andante sostenuto" 4=66
  \clef bass
  a-flat4\p c d-flat2
  c4 b-flat a-flat g f g a-flat c f2 e-flat4.( d-flat8) c4 d-flat e-flat2
  f4 b-flat8(\cresc a-flat\!) g( e-flat f g) a-flat4\pp( a) b-flat2 e-flat, a-flat,
}

BassC = {
  c4\mf( d-flat) e-flat2\< f4\! b-flat8( a-flat) g r g,4\pp( a-flat a b-flat2) e-flat a-flat,
  R1*5

  <<
    \new Voice{
      \voiceOne
      \tweak Y-offset #-4
      R1 * 3
      \tweak Y-offset #-4
      R1_\fermata
    }
    \new Voice = IchSeheNichts \with{
      fontSize = #-3
      autoBeaming = ##f
      \turnOnGrey
    }{
      \voiceTwo
      r2 r8^\fermata
      \tempo "Recitativo"
      \clef violin
      c''8 ^\markup{\hspace #-5 Solo Sopran}
      c8. c16 e2 r8 e8 e e16 e g4. e8 e c c8. c16 c4 g r2^\fermata
      \clef bass
    }
    \new Lyrics \lyricsto IchSeheNichts {
      Ich se -- he nichts;
      der Him -- mel ist e -- hern ü -- ber mei -- nem Haup -- te
    }
  >>
}
CelloC= \BassC

CelloD = {
  <<
    \new Voice{
      \voiceOne
      \mark #1
      \tempo "Tempo"
      c,8( \p e-flat,% 2
      a-flat8 c) f,4 f8( e-flat)
      a-flat ( e-flat' d-flat8 b-flat8)
      c8( a-flat8 c8 e-flat8 ) % 3
      d-flat8 ( a-flat8 b-flat8 d-flat8 )
      % 4
      c( c, g' b-flat )
      a-flat8 c4 ( b-flat16 a-flat16 ) a-flat8
      ( c8 g8 e8 )
      f4. ( a-flat8 ) f8 ( a-flat8 c8
      b-flat8 ) % 6
      a-flat4 d-flat4 ~ d-flat8 g,8
      c4 ~ % 7
      c2~ c8 -\< c8 ( d8 e-flat8 )
      % 8
      f4 ~ _\sf _\sf f8 r8 r8
      e-flat,8 ( ^\p g8 b-flat8 )
      e-flat8 ( c8 b-flat8 f8 ) a-flat4
      ( _\< g4 )
      a-flat8 \(( f8 d-flat'8 ) _\! d-flat8^.\)
      d-flat2 _\> % 11
      c2\p b-flat8 ( f8 g8 a-flat8 )
      % 12
      a-flat4 ( g4 ) a-flat2 % 13
    }
    \new Voice{
      \voiceTwo
      c,4 ( e-flat8 a-flat8 )
      a-flat,8 ( d-flat8 f8 g8 )
      a-flat( e-flat f g )
      a-flat( e-flat a-flat c)
      a-flat a-flat( g b-flat)~
      b-flat c,( e g)
      f a-flat4( g16 f) f8( a-flat e c)
      c2 c8( f e4)
      f4(\< g8\> f)\! e4. ( c8)
      f4( c'8 b-flat) a-flat2
      a-flat4~as8 r r2
      e-flat4 f a-flat8( e-flat d-flat b-flat)
      a-flat( f' g f) e-flat( g a-flat b-flat) a-flat4( g-flat) f( f-flat)
      e-flat8( b-flat d-flat e-flat) c2
    }
  >>
}
BassD = {
  \clef bass
  \mark \default
  a-flat,,4\p c d-flat2
  c4( b-flat ) a-flat( g) f g'8( f) e4 c f b-flat, c2
  a-flat4 f c'2~
  c c4. b-flat8
  a-flat4. g8 f\< f' f( e-flat)
  d4\sf ~ d8 r d-flat2\p
  c4 d-flat e-flat2\< f4 b-flat8( a-flat) g\>( e-flat f g) a-flat2\p d-flat, e-flat a-flat,
}

BassE = {
  c4 d-flat4 \crescOD c2 \cresc
  f,2 ~ ^\f f8 a-flat'8 f8 d-flat8
  % 15
  a-flat2\p d-flat2 % 16
  e-flat2 a-flat,2
  R1 * 2
  <<
    \new Voice = Erde \with{
      fontSize = #-3
      autoBeaming = ##f
    }{
      \voiceOne
      \turnOnGrey
      \clef violin
      r2 r8\fermata
      \tempo "Recitativo"
      c''8_\markup{\hspace #-5 Solo Sopran}
      c8. c16 e2 r8 e8 e e16 e g4. e8 c4. g8  g2 r2\fermata
    }
    \new Lyrics \lyricsto Erde {
      Ich se -- he nichts;
      die Er -- de ist ei -- sern un -- ter mir.
    }
    \new Voice{
      \voiceFour
      \tweak Y-offset #-2
      R1 * 3
      R1_\fermata
    }
  >>
}

CelloF = {
  \break
  \clef bass
  \mark \default
  <<
    \new Voice{
      \voiceOne
      \tempo "Più animato" 4=80
      c,,16 (\p g'16 c,16 \cresc g'16\! b-flat16 g16
      b-flat16 g16 ) c,16 ( _\< g'16 c,16
      g'16 b-flat16 g16 b-flat16 _\!
      g16 ) % 23
      c,16 ( _\> g'16 c,16 g'16
      a-flat16 g16 a-flat16 _\! g16 )
      c,16 ( f16 c16 f16 a-flat16
      f16 a-flat16 f16 )  % 24
      d-flat16 ( f16 d-flat16 f16 \crescOD a-flat16 \cresc f16\! a-flat16
      f16 d-flat16 ) ( f16 d-flat16 f16
      a-flat16 f16 a-flat16 f16 ) % 25
      e-flat16 (\f b-flat'16 e-flat,16 b-flat'16 )
      d-flat16 ( b-flat16 d-flat16 b-flat16 )
      e-flat,16 ( a-flat16 e-flat16 a-flat16 )
      c16 a-flat16 ( c16 a-flat16 ) % 26
    }
    \new Voice{
      \voiceTwo
      e,8 ( c'8 g'8 c,8 )  % 23
      e,8 ( c'8 g'8 c,8 )
      f,8 ( c'8 g'8 c,8 )
      f,8 ( c'8 f8 c8 )
      % 24
      a-flat8 ( d-flat8 f8 d-flat8 )
      a-flat8 ( d-flat8 f8 d-flat8 ) % 25
      g,8 ( e-flat'8) b-flat'8(  e-flat,8 )
      a-flat,8 ( e-flat'8 )  c'( e-flat,8 )
    }
  >>
  <<
    \new Voice = IchSehe \with {
      fontSize = #-3
      \turnOnGrey
    }\relative {
      \voiceOne
      \clef violin
      r4 c''4 c4. c8 e2
    }
    \new Lyrics  \with {
      alignBelowContext = mMusicCTX
    } \lyricsto IchSehe {
      Ich se -- he nichts!
    }
    \new Voice {
      \voiceTwo
      r1 r2
    }
  >>
  <<
    \new Voice \relative {
      \voiceOne
      c16( e g e g e g e)
      c( g' c, g' b-flat g b-flat g )
      c,( g' c, g' b-flat g b-flat g )
      c,( f c f a-flat f a-flat f )
      d-flat( f d-flat f a-flat f a-flat f )
      d-flat ( f d-flat f) a-flat( f a-flat f )
      d( f d f) a-flat( f a-flat f)
      d( a' d, a') c( a c a )
      d,( a' d, a') c( a c a )
      d,( g d g b4)
    }
    \new Voice \relative {
      \voiceTwo
      \clef bass
      c8\p c( e c)
      e,\cresc ( c'\! g' c,) e, ( c' g' c,)
      a-flat( c f c ) a-flat_\markup{\italic \large sempre} ( d-flat f\cresc d-flat)
      a-flat8( d-flat) f( d-flat) a-flat( d) f( d)
      a( d) a'( d,) a( d) a'( d,) g,\f( d' g4)
    }
  >>
  \tempo "Recitativo"
  r2
}

BassF = {
  \mark \default \clef bass
  \crescOD e,,2\p\cresc e2\! % 23
  f2 f2 % 24
  \after 4 \cresc
  \after 2 \!
  f2 f2 % 25
  g2\f a-flat2 % 26
  <<
    \new Voice = IchSehe \with {
      \turnOnGrey
      fontSize = #-3
    }\relative {
      \voiceOne
      \clef violin
      r4 c''4 c4. c8 e2
    }
    \new Lyrics  \with {
      alignBelowContext = mMusicCTX
    } \lyricsto IchSehe {
      Ich se -- he nichts!
    }
    \new Voice {
      \voiceTwo
      \tempo "Recitativo"
      R1
      r2
    }
  >>
  \clef bass
  \tempo "Tempo"
  c2\p
  \crescOD e,\cresc
  e2 f f_\markup{\italic\large sempre} \cresc

  f2 f f-sharp f-sharp g\f
  r2 %_\markup{\small {es folgen 14 Takte Pause}}
}

BassG = {
  R1\tempo "Recit."
  R1 *2
  \tempo "Adagio"
  R1
  r2 r4.\fermata r8
  R1 *5

  <<
    \new Voice = schwarzVonWolken \with {
      fontSize = #-3
      autoBeaming = ##f
      \turnOnGrey
    }\relative {
      \clef violin
      \override Stem.length = #5
      d''2 r8 d d d16 d16 f-sharp2 r4 a, d d f-sharp f-sharp8 f-sharp8 a1
    }
    \new Lyrics  \with {
      alignBelowContext = mMusicCTX
    } \lyricsto schwarzVonWolken {
      schwarz von Wol -- ken und Wind es rau -- schet stär -- ker und stär-
    }
    \new Voice {
      \voiceTwo
      R1 R1 R1 R1
    }
  >>
  \clef bass
  \bar "||"
  \key e-flat \major
  \tempo "a tempo Allegro" 4=144
  \mark \default
  b2 :64\p\cresc b2 :64 \!
  b2 :64 b2 :64
  b2 :64 b2 :64
  e2 :64 e2 :64
  c2 :64\cresc c2 :64
  f2 :64 f2 :64
  b-flat,2 :64 b-flat2 :64
  b-flat2 :64 b-flat2 :64
  a2 :64 a2 :64
  a-flat2 :64 a-flat2 :64
  g2\ff :64 g2 :64
  g2 :64 g2 :64 |
  g2 :64 g2 :64|
  \break
}

BassH = {
  \clef bass
  g4 r4 \tempo "Recitativo"
  r2 r4 g\ff r2 r2 e-flat'4 r a-flat, r r2
}

VocalsH = {
  \clef bass
  \key e-flat \major
  r2^\markup{Elias}
  b-flat4 g8 e-flat d-flat'2 r8 d-flat b-flat d-flat d-flat4 g, r8 g f e-flat c'4. c8 b-flat4 a-flat
}
LyricsH = \lyricmode{
  Dan -- ket dem Herrn,
  denn er ist freund -- lich und sei -- ne Gü -- te wäh -- ret
}

VocalsI = {
  e-flat'2 ~ e-flat8( b-flat4) b-flat8 \bar "||"
}

LyricsI = \lyricmode{
  e -- wig-
}

CelloI = {
  a-flat4\p(^\markup{Vcl.} a) b-flat2 \bar "||"
}
BassI = {
  R1 \bar "||"
  \pageBreak
}
