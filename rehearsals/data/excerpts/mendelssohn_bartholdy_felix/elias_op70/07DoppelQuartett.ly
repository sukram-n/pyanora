init = {
  \clef bass
  \key g \major
  \time 4/4
}

toc_titel = \markup{\smallCaps{ 7 Doppel-Quartett}}
Titel = \markup{\bold\huge {"Nr." \toc_titel}}
mainInstrumentName = \VclKb

%----------------------------------------------------------------------------

BassA = {
  \init
  \tempo "Allegro non troppo" 4=126

  g,2\p r2 g r g'4 r d r e2 r c r g r
  g'4 r e r a,2 r a4 ( b c2)
  d r g4 r d r e2 r c r b r
  a4 r g r a2 r
  \mark #1
  g4 r f-sharp r b2 r e r a,( b4 a ) g2 r
  r4 g\p( f-sharp g ) a r a2( d4) r a r b r a r g2 r2 d'4 r d r
  d4 r d r e r a r g\cresc  r\! f r g r c, r c r c r
  \mark \default
  c1\f( b2\dim a-sharp)\! b( g) f-sharp\p r
  f-sharp r f-sharp4 r f-sharp r b r d r f-sharp2 r f-sharp\cresc r\! g,1\p ~ g ~g4 r g' r f r f r
  e r e\cresc r\! a, r a r d r d r
  \mark \default
  g,1\f c2\dim r\! d\p r g,4 r c2( g4) r g r g r c2( g4)  r g r g r
  c2\cresc\( f1\!\)\( e4\) r a,2\p( d c ) b( f'\cresc e4\!) r a,2\p( d1) ~ d1 ~d4 r r2
  R1*4
}

CelloA = \BassA

CelloB ={
  g,2\p( a4 b) c( e) f-sharp( a) d1~d4 d,4 \rest d2 \rest
  g,4 g\<( a b) c(\> e) f-sharp( a) \! d1~d4
  r4 r2  g2.\pp r4 g r g r g r r2 \bar "||"
  e'2\f d4.. c-sharp16
}

BassB = {
  g,1\p ~ g ~ g2 r2 R1
  g1\< ~ g\> g2\! r R1
  g2.\pp r4 g r g r g r r2 \bar "||"
  e'2\f d4.. c-sharp16
  \break
}

CelloD = {
  \clef bass
  \tempo Recitativo
  c-sharp2 r2
  r4 d \f r2 f4 r r f r e r2
  r d\p c b r2
  \tempo "Andante a tempo"  g-sharp4 r
  \clef bass
  a2^\markup{Vcl.}^( f) g( c,) f1  r2
  \tempo "Recitativo"
  f4  r  r f-sharp\cresc   r2\!
  \clef bass
  \tempo "a tempo"
  g1\p^\markup{\hspace #-3 Vcl. & Kb.}
  g2\<( c\> ) g1\p\fermata \bar "|."
}

BassD = {
  \clef bass
  \tempo Recitativo
  c-sharp2 r2
  r4 d \f r2 f4 r r f r e r2
  r d\p c b r2
  \tempo "Andante a tempo"  g-sharp4 r
  R1 * 3
  r2
  \tempo "Recitativo"
r2  R1
  \tempo "a tempo"
  g1\p
  g2\<( c\> ) g1\p\fermata \bar "|."
}

sBassD = {
  \clef bass

  \tempo Recitativo
  c-sharp2 r2
  r4 d \f r2 f4 r r f r e r2
  r d\p c b r2
  \tempo "Andante a tempo"  g-sharp4 r
  \clef bass
  r1
  r1
  R1 r1   R1
  \clef bass
  \tempo "a tempo"
  g1\p
  g2\<( c\> ) g1\p\fermata \bar "|."
}

sCelloD = \BassD

VocalsD = {
  \key g \major
  \clef violin

  r8 ^\markup{\hspace #-5 Solo Alt} a' a e g g f8. e16 f4 r8 a a4 d,
  r4 f8 e16 d b'2 b8 a16 g c4 g8. c16 c8 e,16 g c,4
  r8  c16 c16  f-sharp8
  f-sharp16  g16  a8  a16  a16
  a4  d,8.  d16  g8 d8  d16 d16
  e16  f16
  f4  e4

  r8  e8  e8  e8
  e4.  e8  d8 d8   d8  d8 % 15
  d4  d4 r4  c8  c8 % 16
  c4  c8  c8  f4  a4
  a4  d,4 r8 f8  e8  d8 % 18
  d2  a'8  b  c4 % 19

  c4.  g8  g8  g8  a8
  f-sharp8 g1
  g1\fermata \bar "|."
}
LyricsD =\lyricmode {
  \set ignoreMelismata = ##t
  Nun auch der Bach ver -- trock -- net ist, E -- li -- as! ma -- che dich auf,
  ge- he gen Zar -- path und blei -- be da -- selbst!
  Denn der Herr hat da -- selbst ei -- ner Wit -- we
  ge -- bo -- ten, dass sie dich ver -- sor -- ge.

  Das Mehl im Cad soll nicht ver -- zeh -- ret wer  -- den,
  und dem Oel -- kru -- ge soll nichts man -- geln,
  bis auf den Tag, da der Herr reg -- nen las -- sen wird auf Er -- den.
}
