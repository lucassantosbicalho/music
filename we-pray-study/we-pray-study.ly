\version "2.24.4"

\header {
  title = "We Pray"
  composer  = "Lucas Bicalho"
}

\markup{  "Estudo realizado com base na introdução da música We Pray, Coldplay."}
\markup{"O objetivo é treinar a notação musical com a linguagem LilyPond."}

global = {
  \time 4/4
  \tempo 4=136
}



%%% =========== CONFIGURAÇÕES GLOBAIS =========== %%%
\layout {
    \context {
        \DrumVoice
        \omit Rest
        \override Stem.direction = #UP
    }
}

%%% =========== DEFINIÇÕES DE PADRÕES =========== %%%
% Hi-Hat
hiHat = \drummode {
    cymc4 hh hh hh |
    hh4 hho hh hh |
    hh4 hh hh hh |
    hh4 hho hh hh 
}

% Caixa (Snare)
snare = \drummode {
    r4 r4 sn4 r4 
}

% Bumbo Principal
keysLDrum = \drummode {
    bd4 r4 r4 bd8 bd8 |
    r4 bd4. bd8 bd8 bd8 
}

% Bumbo - Ponte
keysLDrumBridge = \drummode {
    bd4 bd4 bd4 bd4 |
    bd4 bd4 bd8 r8 r8 r8 
}

% Pad Eletrônico
pad = \drummode {
    r8 mar8 r8 mar8 r8 mar8 r8 mar8 |
    r8 mar8 r8 mar8 r8 r8 r8 mar8 
}


%%% ============ DRUMS =========== %%%
drumsMusic = {
  <<
    \new DrumVoice = "hiHat" {
      \voiceOne
      \drummode {
        
        hh4 hh hh hh
        \repeat volta 2 {
          \repeat unfold 2 { \hiHat }
        }
      }
    }
    
    \new DrumVoice = "snare" {
      \voiceTwo
      \drummode {
        
        r1
        \repeat volta 2 {
          \repeat unfold 6 { \snare }
          \repeat unfold 2 { r1 }
        }
      }
    }
    
    \new DrumVoice = "keysLDrum" {
      \voiceThree
      \override Stem.direction = #DOWN
      \drummode {
        
        r1
        \repeat volta 2 {
          \repeat unfold 3 { \keysLDrum }
          \keysLDrumBridge
        }
      }
    }
  >>
}


%%% =========== KEYS =========== %%%
keysR = \relative c {
  
  f'4. 8~4 4 |
  cis4. 8~4 4 |
  dis4. 8~4 4 |
  c4. 8~4 4 |
  cis4. 8~4 4 |
  gis'4. 8~4 4 |
  c,4. 8~4 4 |
  r1
  
}

keysL = \relative c' {
  
  <f,, f'>1 <cis cis'> <dis dis'> <c c'> <cis cis'> <gis' gis'> <c, c'> | <c c'>4 <c c'> <c c'> <c c'>
  
}


%%% =========== BASS =========== %%%
bass = \relative c, {
 f4. dis8 cis8 dis8 f4  | 
 cis4. 8~4 4 |
 dis4. dis8~4 r8 dis'8 |
 c,4. 8 8 8 4 |
 cis4. cis'8~4 cis,4 |
 gis4 r4 r4. 8 |
 c8 r8 8 r8 8 r8 r8 8 |
 c'8 8 8 8 r8 8 8 8
}

%%% =========== ESTRUTURA MUSICAL =========== %%%
\score {
    <<
      
      % ======= DRUMS ==========%
        \new DrumStaff \with {
            instrumentName = "Drums"
        } <<
            \global
            \drumsMusic
            
        >>
        % ========= PADS ==========%
        \new DrumStaff \with {
            instrumentName = "Pad Effects"
        } <<
            \global
            \new DrumVoice = "pad" {
                \drummode {
                  \undo \omit Rest
                    r1
                    \repeat volta 2 {
                        \repeat unfold 4 { \pad }
                        
                    }
                }
            }
        >>
        % ========== BASS ==========%
       \new Staff \with {
        instrumentName = "Bass"
        midiInstrument = "electric bass (pick)" %"electric bass (finger)" %"acoustic bass"
        } <<
            \global
            \clef "bass" % Bass clef for the bass part
            \new Voice = "bass" { \voiceThree r1 \bass }
        >>	
        %======== KEYS ===========%
        \new ChoirStaff  \with {
            instrumentName = "Keys"
        } <<
            \new Staff <<
              \global
              \new Voice = "keysR" { \voiceOne r1 \keysR
              }
            >>
           
            \new Staff <<
              \global
              \clef "bass"
        
              \new Voice = "keysL" { \voiceTwo r1 \keysL 
                                    
              }
            >>
        >>
       
    >>
    \layout {
        \context {
            \Score
            \override VoltaBracket.break-visibility = ##(#t #t #t)
        }
    }
    \midi {}
}






