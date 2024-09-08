
%---------------------------------------------------------------------------------
mainInstrumentName = \VclKb
additionalInstrumentName = ""
Titel =\markup{\bold\huge { "Nr." \smallCaps{"11 Chor"}}}


csfdecrescdeep = {
  <<
    \new Voice \with{
      \override NoteHead.transparent = ##t \override Stem.transparent = ##t
    } {
      \voiceTwo a,4^\sf^\> a4\!
    }
    \new Voice{
      \voiceOne c,,2
    }
  >>
}

csfdecresc = {
  <<
    \new Voice \with{
      \override NoteHead.transparent = ##t \override Stem.transparent = ##t
    } {
      \voiceTwo a'4^\sf^\> a4\!
    }
    \new Voice{
      \voiceOne c,2
    }
  >>
}

init = { \key f \major \time 4/4 \partial 2 \clef bass }

%-----------------------------------------------------------------------------

CelloA =
{
  \init
  \tempo "Andante grave e maestoso" 4=84
  f4 ( \f
  d4 ) % 1
  c8.-- (  f,16-. ) f4
  f'4\sf ( d4 ) % 2
  c8.-- ( f,16-. )  f4 c'4.-- (
  c8-.) % 3
  d8 ( f8 e8 d8 )
  c-sharp4.-- ( c-sharp8-.) % 4
  d2  % 6
  r2
}

BassA = {
  \init
  \tempo "Andante grave e maestoso" 4=84
  \once \override Staff.DynamicText.transparent = ##t
  r2\f
  R1 * 4
}

BassB = {
  R1 *3
}
CelloB=\BassB

CelloC = {
  r2 a4. a8 % 7
  f'4 ( e4 ) d4 c8. (
  d16 ) % 8
  c4 ( b4 ) g'4 \( (\f \> f8.
  )  e16-. \!\)  % 9
  g4\> \( (\sf f8. ) e16-.\!\)
  e4 \(( \> d8. )  e16\!-. \)
  e2
  r2
}
BassC = {
 % 11
  R1*4
}

BassD = {
  R1 * 3
}
CelloD = \BassD

CelloE = {
  r2 f4 (\f d4 ) % 13
  c8.(  --  f,16 )  -. f4
  f'4\sf ( e4 ) % 14
  c8.-- ( f,16 )  -. f4 c'4.
  c8 % 15
  d4. d8 e4. ( g8 ) % 16
  \mark #1
  a2
  r2
}
BassE = {
  \once \override Staff.DynamicText.transparent = ##t
  R1*4
}

BassF = {
  \once \override Staff.DynamicText.transparent = ##t
  R1\f
}
CelloF = \BassF

CelloG = {
  r2
  \csfdecrescdeep
  \csfdecresc
  \csfdecresc
  \csfdecresc
  a''4.\! a8 % 21
  f'4 ( e4 ) d4 c8.( d16)
  c4 ( b4 ) a,2 ^\sf % 23
  a2 ^\sf a2 ^\sf % 24
  a2 ^\sf f''4 (^\f d4 ) % 25
  c8. (  --  f,16 )  -. f4 f'4
  ( d4 ) % 26
  c8. (  --  f,16 )  -. \crescOD f4  ^\cresc c'4.  c8\! % 27
  d4. d8 e4. ( g8 ) \bar "||"
}
BassG = {
  R1*10
}

CelloH = {
  \time 3/4  \tempo "Allegro non troppo" 4=160
  a2.~\f^\markup{\hspace #-4 Vcl. } a2 r4
}

BassH = {
  \time 3/4  \tempo "Allegro non troppo" 4=160
  f,,2.~ f2 r4
}
BassI = {
  f2. ~ % 31
  f2 r4 % 32
  R2. *4 % 33
  d'2. _\mf % 34
  e4 ( d4 c4 ) % 35
  g2. % 36
  c2. % 37
  R2. * 4 % 38
  d2. _\mf % 39
  e4 ( d4 c4 )
  \break
  g2. ( % 41
  c2. ) % 43
  R2. * 16
  \mark #2
  R2. * 4% 44
  d2. _\mf % 45
  e4 ( f4 )
  b-flat,4\dim % 46
  c2.\! % 47
  f,2. % 48
}

CelloJ = {
  a'8\f f'8 c8 a8
  c8 f8 % 49
  b-flat,8 f'8 d8 b-flat8
  e-flat8 c8
  d8 g8 f-sharp8 e8
  f-sharp8 g8 % 51

  f-sharp8 a8 d,8 d,8 e8 f-sharp8 % 52
  g8 b-flat8 d8 b-flat8
  g8 g8 % 53
  g8 c8 e-flat8 c8 g8
  g8 % 54
  g8 b-flat8 d8 g8
  f-sharp8 e-flat8 % 55
  d8 e-flat8 d8 c8 b-flat8
  a8 % 56
  b-flat8 a8 g8 f8 g8 e8 % 57

  a8 d8 c-sharp8 a8
  b-flat8 g8 % 58
  a8 d8 c-sharp8 b8
  c-sharp8 d8 % 59
  a8 d8 c-sharp8 g8 f8 e8
  d8 f8 a8 f8  d8\cresc d8 % 61
  d8 f8 a8 f8 d8
  d8  % 62
  e8 g-sharp8 b8 g-sharp8
  e8 e8 % 63
  e8 g-sharp8 b8 g-sharp8
  e8 e8\!
}

BassJ = {
  R2. *16
}

BassK = {
  a2\f
  d4 a'2. a,4 a4 d4 a'2.
  a2\mf g4 f-sharp2. a4 a4 g4 f-sharp2. b-flat,4\f g4 c4 g'2.
  b-flat,4 g4 c4 g'2.
  \mark \default
  g,4_\piuF g a b2. b4 b g d'2. f,2\ff g4 a2. f4 f g a2.
  d2.\mf e4 f b-flat,4
  c2. f2. d \dim e4\! f b-flat, c2.~c f, a4 r4 r d r r g, r c f, r r
  a \dim r \! r d r r g r c, f r r c r r f r r c r r f2.\sf~f4 r r
  f2.\sf~f4 r r
  f\dim r \! r
  f r r f r r
  R2.  R2.\fermata
  \bar "|."
}
