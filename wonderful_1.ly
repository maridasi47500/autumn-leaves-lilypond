
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
         c''4 e'' f'' a''\AutoBarline
         c''' d''' d''' d'''\AutoBarline
         c''' bes'' bes'' bes''\AutoBarline
         a'' g'' g'' g''\AutoBarline
%5
         f'' f'' f'' f''\AutoBarline
         f'' f'' f'' f''\AutoBarline
         f'' f'' f'' e''\AutoBarline
         f'' g'' a'' c''\AutoBarline
         cis'' a'' a'' a''\AutoBarline
%10
         bes'' a'' g'' c''\AutoBarline
         e'' f'' a'' c'''\AutoBarline
         c''' d''' d''' c'''\AutoBarline
         bes'' bes'' bes'' bes''\AutoBarline
         a'' a'' g'' g''\AutoBarline
%15
         a'' g'' f'' f''\AutoBarline
         f'' f'' f'' f''\AutoBarline
         f'' f'' f'' f''\AutoBarline
         f'' e'' f'' g''\AutoBarline
         f'' f'' g'' g''\AutoBarline
%20
         g'' c'' c'' bes''\AutoBarline
         a'' a'' gis'' a''\AutoBarline
         f'' c'' f'' g''\AutoBarline
         g'' g'' c'' c''\AutoBarline
         bes'' a'' gis'' a''\AutoBarline
%25
         a'' c''' d''' d'''\AutoBarline
         d''' c''' c''' a''\AutoBarline
         c''' d''' d''' d'''\AutoBarline
         c''' d''' d''' d'''\AutoBarline
         c''' bes'' a'' g''\AutoBarline
%30
         c'' e'' f'' a''\AutoBarline
         c''' c''' d''' d'''\AutoBarline
         c''' bes'' bes'' bes''\AutoBarline
         a'' a'' g'' g''\AutoBarline
         f'' f'' f'' f''\AutoBarline
%35
         f'' f'' f'' f''\AutoBarline
         f'' f'' f'' e''\AutoBarline
         f'' g'' a'' a''\AutoBarline
         a'' a'' a'' f''\AutoBarline
         g'' f'' f'' f''\AutoBarline
%40
         f'' e'' f'' g''\AutoBarline
         f'' f'' \AutoEndMovementBarline
}





%Default Score Layout
\header{DenemoLayoutName = "Default Score Layout"
        instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Partition entière"}
        }

\header {
tagline = \markup {"" on \simple #(strftime "%x" (localtime (current-time)))}

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
  \clef treble    \key f \major    \time 4/4   \MvmntIVoiceI
                        } %End of voice

                        >> %End of Staff

          >>

       } %End of Movement



