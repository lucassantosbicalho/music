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
        
      %<c, c'>1 r1 |
      %<d d'>1 r1 |
      %<e e'>1 r1 |
      %<f f'>1 r1
       %c g8 c8 r4 |
       %d8 a2 d2 r4 |
       %e8 b2 e2 r4 | 
       %f8 d2 f2 r4 c
       
       c,4 g'4 c1 r2  |
       d,4 a' d1 r2 |
       e,4 b' e1 r2 |
       f,4 c'  f1 r2 | 
       <c, g' c>1 g'4~g g~g |
       <d a' d>1 a'4~a a~a |
       <e b' e>1 b'4~b b~b |
       <f c' f>1 c'4~c c~c
    }
  >>
  
  \layout { }
  \midi { }
}
% <c c' c d d d e e e g g g> <c g' c> <d a' d> <e b' e> <f c' f> <c d g g g g g g g a a c c> <c a'> <c g' c> <d a' d> <e b' e> <f c' f> <c g' c> <d a' d> <e b' e> <c a'> <c g' c>c e' <b g'> e <b g'> e <b g'> e <b g'> e, e' <b g'> e <b g'> e <b g'> e <b g'> e, e' <b g'> e <b g'> e <b g'> <b e g> e, c