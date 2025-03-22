\version "2.24.4"

\header {
  title = "Composição 2"
  subtitle = "22/03/2025"
  composer = "Lucas Bicalho"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=56

}


\score {
  \new PianoStaff <<
    
    \new Staff = "upper" \relative c {
      \clef treble
      \global
      c'8 d e g a~a4. |
      e2 d4 c4
    }
    
    \new Staff = "lower" \relative c, {
      \clef bass
      \global
      c1 e2~e4 c4
    }
  >>
  
  \layout { }
  \midi { }
}