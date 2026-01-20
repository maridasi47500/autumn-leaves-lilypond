\version "2.24.3"

\header {
  title = "my score"
}

global = {
  \key c \major
  \time 4/4
}

MvmntIVoiceI = {
TOUTESMESNOTESICI
}
%Default Score Layout


\score {
  \new Staff \with {
    instrumentName = "Violon"
  } \MvmntIVoiceI
  \layout { }
}
