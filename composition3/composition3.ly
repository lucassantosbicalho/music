\version "2.24.4"

\header {
  title = "Composição 3"
  subtitle = "22/03/2025"
  composer = "Lucas Bicalho"
}

global = {
  \time 8/4
  \key c \major
  \tempo 4=95
}


\score {
  \new PianoStaff <<
    \new Staff = "upper" \relative c'' {
      \clef treble
      \global
      c8 d8~4  r8 r4. g8 ~ g4. r2
    }
    
    \new Staff = "lower" \relative c {
      \clef bass
      \global
      r2 <c e g b>4 ~ 4 r1
    }
    
  >>
  
  \layout { }
  \midi { }
}