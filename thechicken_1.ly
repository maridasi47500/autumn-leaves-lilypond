\version "2.24.3"

\header {
  title = "chicken"
}

global = {
  \key c \major
  \time 4/4
}

MvmntIVoiceI = {
  g' c'' e'' g' a' c'' e'' e'' c'' a' c'' f'' 
  e'' e'' a'' g'' es'' d'' d'' c'' b' b' b' a' g' a' a' g' a' c'' e'' c''
  c'' g' a' c'' e'' c'' c'' g' a' c'' e'' c'' c'' c'' bes' g' g' f' e' e' c' bes g' 
  g' c'' e'' e'' ees'' ees'' e'' e'' ees'' ees'' e'' e'' ees'' ees'' e'' e'' ees'' ees'' 
  c'' bes' g' g' f' e' e' c' bes g' c'' c'' c'' c'' c'' 
  c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' c'' d'' c'' es'' f'' es'' c'' bes' ges' f' f' c'' c'' d'' d'' c'' 
  b' b' b' a' g' a' a' g' a' c'' e'' c'' c'' g' a' c'' e'' c'' c'' g' a' c'' e'' c'' c'' 
  c'' bes' g' g' f' e' e' c' bes g' e'' e'' es'' es'' e'' e'' es'' es'' e'' e'' es'' es'' e'' e'' es'' es'' 
  c'' c'' bes' g' g' f' e' e' c' bes c'' bes' g' g' f' e' e' c' bes c'' bes' g' g' f' e' e' c' bes g'

}
%Default Score Layout


\score {
  \new Staff \with {
    instrumentName = "Violon"
  } \MvmntIVoiceI
  \layout { }
}
