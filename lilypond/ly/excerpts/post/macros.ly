BassGT = {
\BassA \BassB \BassC \BassD
\BassE \BassF \BassG \BassH
\BassI \BassJ \BassK \BassL
}

CelloGT = {
\CelloA \CelloB \CelloC \CelloD
\CelloE \CelloF \CelloG \CelloH
\CelloI \CelloJ \CelloK \CelloL
}

VocalsGT = {
\VocalsA \VocalsB \VocalsC \VocalsD
\VocalsE \VocalsF \VocalsG \VocalsH
\VocalsI \VocalsJ \VocalsK \VocalsL
}

LyricsGT = {
\LyricsA \LyricsB \LyricsC \LyricsD
\LyricsE \LyricsF \LyricsG \LyricsH
\LyricsI \LyricsJ \LyricsK \LyricsL
}

pyanora_Instrument = {
  \scorePortion \VocalsGT \LyricsGT \BassGT #(skip-of-length BassGT)
}
%StavesCello = {
%  \scorePortion \VocalsGT \LyricsGT \CelloGT #(skip-of-length CelloGT)
%}
%StavesBoth = {
%  \scorePortion \VocalsGT \LyricsGT \CelloGT \BassGT
%}
