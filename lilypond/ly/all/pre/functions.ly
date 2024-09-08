extendLV =
#(define-music-function (further) (number?)
   #{
     \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
     \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -8)
     \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 8) .3)
   #} )


extendRT =
#(define-music-function (further) (number?)
   #{
     \once \override RepeatTie.X-extent = #'(0 . 0)
     \once \override RepeatTie.details.note-head-gap = #(/ further -8)
     \once \override RepeatTie.extra-offset = #(cons (- 0.5 (/ further 3)) .1)
   #} )


#(ly:font-config-add-directory ".fonts")
% #(ly:font-config-display-fonts)

    #(define (cutLine position)
   ( markup #:overlay (
                        #:postscript ( format #f "
gsave
  initmatrix
  72 25.4 div 72 25.4 div scale
  0.1 setlinewidth
  297 240 sub 2 div 420 325 sub 2 div moveto
  currentpoint translate
  1 0 0 setrgbcolor
  0 ~a moveto
  240 0 rlineto stroke
  newpath
  240 ~a moveto
  0.0 setgray
  [3 5] 3 setdash
  297 240 sub 2 div 0 rlineto stroke
  newpath
  240 ~a moveto
  /D050000L findfont
  5 scalefont
  setfont
  gsave
    currentpoint translate
    180 rotate
    -5 -1.75 moveto
    ($) show
  grestore
  -240 0 rmoveto
  gsave
    -5 -1.75 rmoveto
    ($) show
  grestore
  0.0 setgray
  240 297 sub 2 div 0 rlineto stroke
grestore
" position position position)
         )
      )
   )

#(define (bachCuts)
   (
     markup #:overlay
     (
       #:postscript
       (
         format #f "
/CUTCROSS {
    -5 0 moveto
    -20 0 rlineto stroke
    0 -5 moveto
    0 -20 rlineto stroke
}def
gsave
  initmatrix
  72 25.4 div 72 25.4 div scale
  0.0 setgray
  0.1 setlinewidth
  297 240 sub 2 div 420 325 sub 2 div moveto
  gsave
    currentpoint translate
    CUTCROSS
    240 0 moveto
    currentpoint translate
    90 rotate
    -5 0 moveto
    -20 0 rlineto stroke
    0 -5 moveto
    0 -20 rlineto stroke
    325 0 moveto
    currentpoint translate
    90 rotate
    -5 0 moveto
    -20 0 rlineto stroke
    0 -5 moveto
    0 -20 rlineto stroke
    240 0 moveto
    currentpoint translate
    90 rotate
    -5 0 moveto
    -20 0 rlineto stroke
    0 -5 moveto
    0 -20 rlineto stroke
  grestore
  1.0 setgray
  240 0 rlineto
  0 325 rlineto
  -240 0 rlineto
  closepath stroke
grestore
"
         )
       )
     )
   )

