
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
         r2 r\AutoBarline
         r r4 g'8 g'\AutoBarline
         g'4. bes'8 bes'2\AutoBarline
         r8 bes' bes' bes' bes'2\AutoBarline
%5
         r8 bes' bes' bes' bes'2\AutoBarline
         r8 bes' bes' bes' bes'4~  \tuplet 3/2 { bes'8 bes' bes' }         bes'4~  \tuplet 3/2 { bes'8 bes' bes' } bes'2\AutoBarline
         r4 bes'8 bes' \tuplet 3/2 { bes'4 bes' bes' }         bes' bes' bes' bes'\AutoBarline
%10
         bes' \tuplet 3/2 { bes'8 bes' bes' } bes'4 \tuplet 3/2 { r8 bes' bes' }         bes'4. g'8 g'4. f'8\AutoBarline
         f'4. bes'8 bes'4. r8\AutoBarline
         e'4 \tuplet 3/2 { e'8 e' e' } e'4. f'8\AutoBarline
         g'4~  \tuplet 3/2 { f' f'16 f' } g'4~  \tuplet 3/2 { g'8 g' g' }%15
         g'4~  \tuplet 3/2 { g'8 g' g' } g'2\AutoBarline
         r4 g'8 g' \tuplet 3/2 { g'4 g' g' }         g'1\AutoBarline
         r2 r4 g'\AutoBarline
         g'8 g'4 g'8 g'4. g'8\AutoBarline
%20
         g' g' g' g' g' g' g' g'\AutoBarline
         g' g'4 g'8 g'4. g'8\AutoBarline
         g' g'4 g'8 g'4 g'8 g'\AutoBarline
         fis'4 fis'8 fis' fis'4 \tuplet 3/2 { fis'8 fis' fis' }         f'4 f'8 f' f'2\AutoBarline
%25
         r8 f' f' f' f'2\AutoBarline
         f'4 f' f' \tuplet 3/2 { r8 f' f' }         f'4. f'8 f'4. f'8\AutoBarline
         f'4. f'8 f'2\AutoBarline
         r8 f' f' f' f'4. f'8\AutoBarline
%30
         f'4. f'8 f'4~  \tuplet 3/2 { f'8 f' f' }         f'4~  \tuplet 3/2 { f'8 f' f' } f'2\AutoBarline
         r4 f'8 f' \tuplet 3/2 { f'4 f' f' }         f'1~ \AutoBarline
         f'2 r4 \tuplet 3/2 { f' f'8 }%35
         \tuplet 3/2 { f'4 f'8 } \tuplet 3/2 { f'4 f'8 } f'2\AutoBarline
         r4 f'8 f' \tuplet 3/2 { f'4 f' f' }         f'1~ \AutoBarline
         f'\AutoBarline
         r \AutoEndMovementBarline
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



