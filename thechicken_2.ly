
%% Fichier LilyPond généré par Denemo version 2.5.0

%%http://www.gnu.org/software/denemo/

\version "2.22"

CompactChordSymbols = {}
#(define DenemoTransposeStep 0)
#(define DenemoTransposeAccidental 0)
DenemoGlobalTranspose = \void {}
titledPiece = {}
AutoBarline = {}
AutoEndMovementBarline = \bar "|."

% The music follows

MvmntIVoiceI = {
         \once \override Staff.TimeSignature #'stencil = ##f \time 4/4  \set Score.skipBars = ##t R1*4/4*4         %{ grouped rest %}         %{ grouped rest %}         %{ grouped rest %}%5
         \set Score.skipBars = ##t R1*4/4*3         %{ grouped rest %}         %{ grouped rest %}         r2 r4 r16 g' g'8~ \AutoBarline
          \repeat volta 2 {
 g'4 r r2\AutoBarline
%10
         r4 g'16 (g' g') g' (g'8) g'16 (g' g'8) g'\AutoBarline
         g'4 r r2\AutoBarline
         r4 g' g'8 (g' g' g'\AutoBarline
         g'1)\AutoBarline
         r2 r4 g'\AutoBarline
%15
         r g'8 g' r4 g'16 (g' g' g'\AutoBarline
         e''2) r8. g'16 g' (g' g' g'\AutoBarline
         c''2) r8 r16 c'' c'' (c'' c'' c''\AutoBarline
         c''2) r8 r16 c'' c'' (c'' c'' c''\AutoBarline
         c''1)\AutoBarline
%20
         c''16 c''8 c''16 (c'') c''8 c''16 (c'') c''8 c''16 r8\AutoBarline
         a' 
} \alternative{{
	 \set Score.skipBars = ##t R1*4/4*3         %{ grouped rest %}         %{ grouped rest %}         r2 r4 r16 d'' d''8\AutoBarline
%25
         
}{
	 r4 d''16 d''8 d''16 (d''2)\AutoBarline
         r4 d''16 d''8 d''16 (d''2)\AutoBarline
         r4 d''16 d''8 d''16 (d''2)\AutoBarline
         r4 d''16 d''8 d''16 (d''2) 
}}
	          \repeat volta 2 {
 s1*4/4\AutoBarline
%30
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
%35
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
%40
         d''16 d''8 d''16 (d'') d''8 d''16 (d'') d'' d''8 r a'\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
         s1*4/4\AutoBarline
%45
         r4 d''16 d'' d'' d'' r8. d''16 r4\AutoBarline
         r d''16 d'' d'' d'' r4 d''16 d'' d'' d''\AutoBarline
         r4 d''16 d'' d'' d'' r8. d''16) r4\AutoBarline
         r8 d''16 (d'' d''8 d'' d'' d'' d'' d''\AutoBarline
         )d''4. d''8 (d''4.) d''8(\AutoBarline
%50
         d''2) r4 d''\AutoBarline
         r d''8 d'' r4 d''16 (d'' d'' d''\AutoBarline
         d''2) r8 r16 d'' d'' (d'' d'' d''\AutoBarline
         d''2) r8 r16 d'' d'' (d'' d'' d''\AutoBarline
         d''2) r8 r16 d'' d'' (d'' d'' d''\AutoBarline
%55
         d''1)\AutoBarline
         d''16 d''8 d''16 (d'') d''8 d''16 (d'') d''8 d''16 r8 d''\AutoBarline
         r4 d''16 d''8 d''16 (d''2)\AutoBarline
         r4 d''16 d''8 d''16 (d''2)\AutoBarline
         r4 d''16 d''8 d''16 (d''2)\AutoBarline
%60
         r4 d''16 d''8 d''16 (d''2) }
}




MvmntIIVoiceI = {
         c'1\AutoBarline
         \time 3/4  c'16 c'8 c'16 (c') c'8 c'16 (c') c'8 c'16\AutoBarline
         c' c'8 c'16 (c') c'8 c'16 (c') c' c'8\AutoBarline
         \time 4/4  c'16 c'8 c'16 (g') c'8 e'16 (c'8) c'16 c' r8 b' \AutoEndMovementBarline
}





%Default Score Layout
\header{DenemoLayoutName = "Default Score Layout"
        instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Partition entière"}
        }

\header {
tagline = \markup {"/home/ordigoud/thechickenscore.denemo" on \simple #(strftime "%x" (localtime (current-time)))}

        }
#(set-default-paper-size "a4")
#(set-global-staff-size 18)
\paper {

       }

\score { %Start of Movement
          <<

%Start of Staff
\new Staff = "Part 1"  << 
 \new Voice = "MvmntIVoiceI"  { 
  \clef treble    \key g \minor    \time 4/4   \MvmntIVoiceI
                        } %End of voice

                        >> %End of Staff

          >>

       } %End of Movement

\score { %Start of Movement
          <<

%Start of Staff
\new Staff = "Part 1"  << 
 \new Voice = "MvmntIIVoiceI"  { 
  \clef treble    \key g \minor    \time 4/4   \MvmntIIVoiceI
                        } %End of voice

                        >> %End of Staff

          >>

       } %End of Movement


\header {
title = "the chicken"
instrument = "guitar/violin"

        }


