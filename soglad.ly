
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
         g''4 g'' g''2\AutoBarline
         r1\AutoBarline
         g''2 g''\AutoBarline
         d''1\AutoBarline
%5
         fis''4 fis'' e''4. d''8~ \AutoBarline
         d''1\AutoBarline
         a'2 a'4. a'8~ \AutoBarline
         a'1\AutoBarline
         e'4 d' e' b\AutoBarline
%10
         d'1\AutoBarline
         b'2 b'\AutoBarline
         b'4. g'8~  g'2\AutoBarline
         e'4 g' a'4. ees'8\AutoBarline
         g'2 a'8 b'4.\AutoBarline
%15
         b'4 b' b' b'8 b'~ \AutoBarline
         b'4 g'2.\AutoBarline
         b'4 b' a' e'8 g'~ \AutoBarline
         g'1\AutoBarline
         s1*4/4 }


MvmntIVoiceILyricsVerseI = \lyricmode { 
i'm so glad i'm so glad je sus lifted me i'm so glad je sus lif te me i'm so gla ad je sus liftt  ed me sin ging  glo ry ha le lu jah  je sus lift ed me 
}
MvmntIVoiceILyricsVerseII = \lyricmode { 
 
}


MvmntIVoiceII = {
         r4 r r r8 g'\AutoBarline
         c'' d'' e'' d'' g'2\AutoBarline
         r4 r r r\AutoBarline
         b' d''8 b' d''4 r\AutoBarline
%5
         r r r r\AutoBarline
         b' d''8 b' e''4 d''\AutoBarline
         r1\AutoBarline
         b'4 d''8 b' d''4 r\AutoBarline
         r1\AutoBarline
%10
         b'4 d''8 b' e''4 d''\AutoBarline
         r1\AutoBarline
         g''4 ges'' f''2\AutoBarline
         e''8 e'' e'' e'' e''4 e''8 e''~ \AutoBarline
         e''1\AutoBarline
%15
         r4 r d'8 e' g' a'\AutoBarline
         b'4 g'2.\AutoBarline
         r4 r d'8 e' g' a'\AutoBarline
         g'1\AutoBarline
         s1*4/4 }


MvmntIVoiceIILyricsVerseI = \lyricmode { 
o o o o o o i'm so o glad i'm so o gla ad i'm so o glad i'm so o gla ad gla a ad je sus lif ted me sin ging glo ry ha le lu jah je sus lif ted me 
}


MvmntIVoiceIII = {
         r1\AutoBarline
         r\AutoBarline
         r\AutoBarline
         b'\AutoBarline
%5
         r\AutoBarline
         c''4 b'2.\AutoBarline
         r1\AutoBarline
         b'\AutoBarline
         r\AutoBarline
%10
         c'4 b2.\AutoBarline
         r1\AutoBarline
         b'4 bes' a'2\AutoBarline
         a'8 a' a' a' a'4 a'8 a'~ \AutoBarline
         a'1\AutoBarline
%15
         b'4 b' b' b'8 b'~ \AutoBarline
         b'4 b'2.\AutoBarline
         b'4 b' b' b'8 b'~ \AutoBarline
         b'1\AutoBarline
         s1*4/4 }


MvmntIVoiceIIILyricsVerseI = \lyricmode { 
glad gla ad glad gla ad gla a ad je sus lif ted me sin ging glo ry ha le lu jah je sus lif ted me 
}



MvmntIVoiceIIIVerseIContext = \context Lyrics = MvmntIVoiceIIIVerseI \lyricsto MvmntIVoiceIII \MvmntIVoiceIIILyricsVerseI

MvmntIVoiceIIVerseIContext = \context Lyrics = MvmntIVoiceIIVerseI \lyricsto MvmntIVoiceII \MvmntIVoiceIILyricsVerseI

MvmntIVoiceIVerseIIContext = \context Lyrics = MvmntIVoiceIVerseII \lyricsto MvmntIVoiceI \MvmntIVoiceILyricsVerseII

MvmntIVoiceIVerseIContext = \context Lyrics = MvmntIVoiceIVerseI \lyricsto MvmntIVoiceI \MvmntIVoiceILyricsVerseI



%Mise en page personnalisée
\header{DenemoLayoutName = "Mise en page personnalisée"
        }

\header {
tagline = \markup {"/home/ordigoud/Documents/soglad.denemo" on \simple #(strftime "%x" (localtime (current-time)))}

        }
\layout {indent = 10.8}
#(set-default-paper-size "a4")
#(set-global-staff-size 18)
\paper {

       }

\score { %Start of Movement
          <<

%Start of Staff
  \new Staff = "Violin_" \with { instrumentName = \markup {  \with-url #'"scheme:(d-GoToPosition 1 1 1 1)(let ((choice (d-PopupMenu (list (cons (_ \"Change Name\") d-InstrumentName)   (cons (_ \"Change Indent\") d-ScoreIndent)))))
                            (if choice (choice)))    " "Violin" } }<< 
 \new Voice = "MvmntIVoiceI"  { 
  \clef treble    \key g \major    \time 4/4   \MvmntIVoiceI
                        } %End of voice

                        >> %End of Staff

        \new Lyrics = MvmntIVoiceIVerseI

        \MvmntIVoiceIVerseIContext

%Start of Staff
\new Staff = "Soprano_"  << \set Staff.instrumentName = \markup {  \with-url #'"scheme:(d-GoToPosition 1 1 1 1)(let ((choice (d-PopupMenu (list (cons (_ \"Change Name\") d-InstrumentName)   (cons (_ \"Change Indent\") d-ScoreIndent)))))
                    (if choice (choice)))    " "Soprano" }\set Staff.shortInstrumentName = "Sop"
 \new Voice = "MvmntIVoiceII"  { 
  \clef treble    \key g \major    \time 4/4   \MvmntIVoiceII
                        } %End of voice

                        >> %End of Staff

        \new Lyrics = MvmntIVoiceIIVerseI

        \MvmntIVoiceIIVerseIContext

%Start of Staff
\new Staff = "Alto_"  << \set Staff.instrumentName = \markup {  \with-url #'"scheme:(d-GoToPosition 1 2 1 1)(let ((choice (d-PopupMenu (list (cons (_ \"Change Name\") d-InstrumentName)   (cons (_ \"Change Indent\") d-ScoreIndent)))))
                    (if choice (choice)))    " "Alto" }\set Staff.shortInstrumentName = "Alt"
 \new Voice = "MvmntIVoiceIII"  { 
  \clef treble    \key g \major    \time 4/4   \MvmntIVoiceIII
                        } %End of voice

                        >> %End of Staff

        \new Lyrics = MvmntIVoiceIIIVerseI

        \MvmntIVoiceIIIVerseIContext

          >>

\header {
title = ##f
instrument = ##f

        }

       } %End of Movement


