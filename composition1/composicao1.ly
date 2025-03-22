\version "2.24.4"

\header {
  title = "Composição 1"
  subtitle = "21/03/2025"
  composer = "Lucas Bicalho"
}

global = {
  \time 8/4
  \key c \major
  \tempo 4=76
}


\score {
  \new PianoStaff <<
    \new Staff = "upper" \relative c'' {
      \clef treble
       \global
      
      
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 | 
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 | 
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        g'8 e d g4 e8 d g4 e8 d g4  e8 d c8 |
        %c e 
    }
    
    \new Staff = "lower" \relative c {
      \clef bass
      \global
      
       c,4 g'4 c1 r2 |
       d,4 a' d1 r2 |
       e,4 b' e1 r2 |
       f,4 c' f1 r2 | 

       <c, g' c>1 g'4~g g~g |
       <d a' d>1 a'4~a a~a |
       <e b' e>1 b'4~b b~b |
       <f c' f>1 c'4~c c~c
    }
  >>
  
  \layout { }
  \midi { }
}
