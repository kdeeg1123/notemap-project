\version "2.22.2"

\header {
  title = "Wizards in Winter"
  composer = "Paul O'Neill & Robert Hinkel"
  arranger = "Rima Greer & Tim Waugh"
}

\score {
  \new StaffGroup
  <<
    \cadenzaOff
    \new Staff = "upper" {
      \key c \major
      \hide Stem
      
      \undo \hide Stem
    }
    \new Staff = "lower" {
      \clef bass
      \key c \major
      \hide Stem
      
      \undo \hide Stem
    }
    \new Staff = "uchime" {
      \key c \major
      \hide Stem
      \override NoteHead #'style = #'harmonic-mixed
      
      \revert NoteHead #'style
      \undo \hide Stem
    }
    \new Staff = "lchime" {
      \clef bass
      \key c \major
      \hide Stem
      \override NoteHead #'style = #'harmonic-mixed
      
      \revert NoteHead #'style
      \undo \hide Stem
    }
    \cadenzaOn
  >>
}

\paper {
  #(set-default-paper-size "letter")
  
  score-system-spacing =
    #'((basic-distance . 5)
    (minimum-distance . 5)
    (padding . 5)
    (stretchability . 5))
  system-system-spacing =
    #'((basic-distance . 10)
    (minimum-distance . 10)
    (padding . 10)
    (stretchability . 0))
}

\score 
{
  <<
    \set Score.barNumberVisibility = #all-bar-numbers-visible
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    \new StaffGroup
    <<
      \new Staff = "treble" {
        \set Staff.midiMinimumVolume = #0.2
        \set Staff.midiMaximumVolume = #0.9
        \tempo 4 = 110
        \override Score.BarNumber.break-visibility = ##(#f #t #t)
        \time 4/4
        \key g \major 
          % START HERE
          % \override NoteHead #'style = #'harmonic-mixed
          % \revert NoteHead #'style
          <e' g' b'>8\staccato_"+" <e' g' b'>8\staccato_"+" <e' g' b'>8\staccato_"+" <d' fis' a'>8\staccato_"+" <e' g' b'>8\staccato_"+" <e' g' b'>8\staccato_"+" <e' g' b'>8\staccato_"+" <d' fis' a'>8\staccato_"+"
          <d' g'>8^\markup { \italic "mallets simile"} <d' g'>8 <d' g'>8 <d' fis'>8 <d' g'>8 <d' g'>8 <d' g'>8 <d' fis'>8
          e'8 e'8 e'8 dis'8 e'8 e'8 e'8 <e' g'>8
          <<
            { fis'4 r4 r2 }
            \\
            { s4 dis'8 e'8 fis'8 g'8 a'8 b'8 }
          >>
          <e' g' b'>8 <e' g' b'>8 <e' g' b'>8 <d' fis' a'>8 <e' g' b'>8 <e' g' b'>8 <e' g' b'>8 <d' fis' a'>8
          <d' g'>8 <d' g'>8 <d' g'>8 <d' fis'>8 <d' g'>8 <d' g'>8 <d' g'>8 <d' fis'>8
          e'8 e'8 e'8 dis'8 e'8 e'8 e'8 <e' g'>8
          fis'4 r4 r2
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <<
            { <fis' b' dis'' fis''>4 r4 r2 }
            \\
            { s4 dis'8 e'8 fis'8 g'8 a'8 b'8 }
          >>
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' g''>8
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|" <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 <a' b' a'' b''>4^"R" <g' b' g'' b''>4 <fis' b' fis'' b''>4
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <<
            { <fis' b' dis'' fis''>4 r4 r2 }
            \\
            { s4 dis'8\staccato_"+" e'8\staccato_"+" fis'8\staccato_"+" g'8\staccato_"+" a'8\staccato_"+" b'8\staccato_"+" }
          >>
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|" <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 a'4^"v" g'4^"v" fis'4^"v"
          dis'4^"v" r4 r2
          r1
          r1
          r1
          r1
          <<
            { r4 <b' e''>8 <g' b'>8 <b' e'>4 <a' d''>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. d'4 \revert NoteHead #'style }
          >>
          <<
            { r4 <g' b'>8 <e' g'>8 <g' b'>4 <fis' a'>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. d'4 \revert NoteHead #'style }
          >>
          <<
            { r4 <e' g'>8 e'8 <e' g'>4 <d' fis'>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. s4 \revert NoteHead #'style }
          >>
          <<
            { <b' e''>4 <a' d''>4 <g' b'>4 <a' d''>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. d'4 \revert NoteHead #'style }
          >>
          <<
            { r4 <b' e''>8 <g' b'>8 <b' e'>4 <a' d''>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. d'4 \revert NoteHead #'style }
          >>
          <<
            { r4 <g' b'>8 <e' g'>8 <g' b'>4 <fis' a'>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. d'4 \revert NoteHead #'style }
          >>
          <<
            { r4 <e' g'>8 e'8 <e' g'>4 <d' fis'>4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e'2. s4 \revert NoteHead #'style }
          >>
          e'4 d'4 s4 d'4
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8 <dis' dis''>8 <e' e''>8 <fis' fis''>8 <a' a''>8
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|" <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 a'4_"R" g'4 fis'4
          <e' g' b' e'' g'' b''>8_"R" <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <<
            { <fis' b' dis'' fis''>4 r4 r2 }
            \\
            { s4 dis'8\staccato_"+" e'8\staccato_"+" fis'8\staccato_"+" g'8\staccato_"+" a'8\staccato_"+" b'8\staccato_"+" }
          >>
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <dis' fis' b' dis'' fis'' b''>4^"RT" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8 <dis' dis''>8 <e' e''>8 <fis' fis''>8 <a' a''>8
          <dis' fis' b' dis'' fis'' b''>4^"TD" fis''4 e''4 d''4
          b'4 a'4 fis'4 e'4
          <<
            { b''8 a''8 fis''8 e''8 e''8 fis''8 e''8 dis''8 }
            \\
            { r4 a'4 e'4 b'4 }
          >>
          <<
            { dis''4 e''4 fis''4 a''4 }
            \\
            { b'8 a'8 fis'8 e'8 e'8 fis'8 a'8 b'8 }
          >>
          <e'' g''>4 <b' fis''>4 <e'' g''>4 <b' fis''>4
          <g'' b''>4 <fis'' a''>4 <e'' g''>4 <d'' fis''>4
          <e'' g''>4 <b' fis''>4 <e'' g''>4 <b' fis''>4
          <g'' b''>4 <fis'' a''>4 <e'' g''>4 <d'' fis''>4
          e''4 d''4 b'4 a'4
          b'4 a'4 g'4 fis'4
          g'4 fis'4 e'4 d'4
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g'' b''>4 <fis'' a''>4 <e'' g''>4 <d'' fis''>4 \revert NoteHead #'style }
            \\
            { g'4 fis'4 e'4 d'4 }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <e'' g''>4 <b' fis''>4 <e'' g''>4 <b' e''>4 \revert NoteHead #'style }
            \\
            { g'4 fis'4 e'4 d'4 }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g'' b''>4 <fis'' a''>4 <e'' g''>4 <d'' fis''>4 \revert NoteHead #'style }
            \\
            { g'4 fis'4 e'4 d'4 }
          >>
          <<
            { g''4 fis''4 e''4 d''4 }
            \\
            { e'2 d'2 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed <g' e''>4 b'4 b'4 b'4 \revert NoteHead #'style }
          >>
          <<
            { g''4 fis''4 e''4 d''4 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed e''4 }
          >>
          <<
            { e''4 fis''4 g''4 a''4 }
            \\
            { e'2 fis'2 }
            \\
            { \override NoteHead #'style = #'harmonic-mixed g'4 b'4 b'4 b'4 \revert NoteHead #'style }
          >>
          <<
            {
              b''1~
              b''1~
              b''1
            }
            \\
            {
              g'2 a'2
              b'1
              s1
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed g''4 fis''4 e''4 d''4
              g''4 fis''4 e''4 d''4
              e''4 fis''4 g''4 a''4 \revert NoteHead #'style
            }
          >>
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>4^"v" r8 b'8\staccato^"+" <dis' dis''>8\staccato^"+" <e' e''>8\staccato^"+" <fis' fis''>8\staccato^"+" <a' a''>8\staccato^"+"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|" <dis' fis' b' dis'' fis'' b''>8^"v" r8 r8 <b' dis'' fis'' b''>8^"v|"
          <dis' fis' b' dis'' fis'' b''>8^"v" r8 <a' b' a'' b''>4_"R" <g' b' g'' b''>4 <fis' b' fis'' b''>4
          <e' g' b' e'' g'' b''>8\ff <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <<
            { <fis' b' dis'' fis''>4 r4 r2 }
            \\
            { s4 dis'8 e'8 fis'8 g'8 a'8 b'8 }
          >>
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8
          <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <dis' fis' a' dis''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e''>8 <e' g' b' e'' g''>8
          <fis' b' dis'' fis''>8^"v" r8 a'4 g'4 fis'4
          <fis' b' dis'' fis''>8^"v" r8 r4 r2
          <fis' b' dis'' fis''>8^"v" r8 r4 <fis' b' dis'' fis''>8^"v" r8 r4
          <fis' b' dis'' fis''>4^"v" <fis' b' dis'' fis''>4^"v" <fis' b' dis'' fis''>4^"v" <fis' b' dis'' fis''>4^"v"
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' g' b' d'' g''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <d' fis' a' e'' g'' b''>8 <e' g' e'' g'' b''>8 <d' fis' b' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' e'' g'' b''>8 <e' g' e'' g'' b''>8 <d' fis' b' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <d' fis' a' e'' g'' b''>8 <e' g' e'' g'' b''>8 <d' fis' b' d'' fis'' a''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' e'' g'' b''>8 <e' g' e'' g'' b''>8 <d' fis' b' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <e' g' b' e'' g'' b''>8 <d' fis' a' d'' fis'' a''>8
          <e'' b''>8 <e'' g''>8 <e'' a''>8 <d'' fis''>8 <e'' g''>8 <b' e''>8 <dis'' fis''>8 <b' dis''>8
          <e'' b''>8 <e'' g''>8 <e'' a''>8 <d'' fis''>8 <e'' g''>8 <b' e''>8 <dis'' fis''>8 <b' dis''>8
          <e' b'>8 <e' g'>8 <e' a'>8 <d' fis'>8 <e' g'>8 e'8 <dis' fis'>8 dis'8
          <e' b'>8 <e' g'>8 <e' a'>8 <d' fis'>8 <e' g'>8 e'8 <dis' fis'>8 dis'8
          <e' g' b' e'' g'' b''>1
          <e' g' b' e'' g'' b''>4^"v" r4 r2
          \bar "|."
      }
      
      \new Staff = "bass" {
        \clef bass
        \time 4/4
        \key g \major
          % START HERE
          <e, e b>4\staccato_"+" <e, e b>4\staccato_"+" <e, e b>4\staccato_"+" <e, e b>4\staccato_"+"
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <g, d g>4_\markup { \italic "mallets simile"} <g, d g>4 <g, d g>4 <g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 <g b>8 }
            \\
            { <e, e>4 <e, e>4 <e, e>4 <e, e>4 }
          >>
          <b, b>8 <b, b>8 dis8 e8 fis8 g8 a8 b8
          <e, e b>4 <e, e b>4 <e, e b>4 <e, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <g, d g>4 <g, d g>4 <g, d g>4 <g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 <g b>8 }
            \\
            { <e, e>4 <e, e>4 <e, e>4 <e, e>4 }
          >>
          <<
            { <fis b>8 fis8 g8 a8 b8 a8 g8 fis8 }
            \\
            { b,4 r4 r2 }
          >>
          <e, b, e b>4 <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, b>8 <b, b>8 dis8 e8 fis8 g8 a8 b8
          <e, b, e b>4 <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|" <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|"
          <<
            { <b, dis fis b>^"v" r8 <a b>4^"R" <g b>4 <fis b>4 }
            \\
            { s4 a,4\staccato_"+" g,4\staccato_"+" r4 }
          >>
          <e, b, e b>4_"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, b>8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" g8\staccato^"+" a8\staccato^"+" b8\staccato^"+"
          <e, b, e b>4^"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|" <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|"
          <<
            { <b, dis fis b>^"v" r8 a4^"v" g4^"v" fis4^"v" }
            \\
            { s4 a,4\staccato_"+" g,4\staccato_"+" r4 }
          >>
          dis4^"v" <b, b>4\staccato_"+" <a, a>4\staccato_"+" <fis, fis>4\staccato_"+"
          <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+"
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { \override NoteHead #'style = #'harmonic-mixed <g b>2. a4 \revert NoteHead #'style }
            \\
            { <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" }
            \\
            { s2 b4 s4 }
          >>
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r8 <b, b>8 dis8 e8 fis8 a8
          <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|" <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|"
          <b, dis fis b>8^"v" r8 <a, a>4 <g, g>4 <fis, fis>4
          <e, b, e b>4 <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, b>8 <b, b>8 dis8 e8 fis8 g8 a8 b8
          <e, b, e b>4 <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, dis fis b>4^"RT" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r4 r2
          <b, dis fis b>4^"TD" r4 r2
          r1
          r1
          r1
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <<
            { b2 a2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { b2 a2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { g2 fis2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { g2 a2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <<
            { b2 a2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <<
            { b2 a2 }
            \\
            { <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" }
          >>
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+" <e, e>8\staccato_"+" <e, e>4\staccato_"+" <e, e>8\staccato_"+"
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>4^"v" r8 <b, b>8\staccato^"+" dis8\staccato^"+" e8\staccato^"+" fis8\staccato^"+" a8\staccato^"+"
          <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|" <b, dis fis b>8^"v" r8 r8 <b, b>8^"v|"
          <<
            { <b, dis fis b>^"v" r8 <a b>4^"R" <g b>4 <fis b>4 }
            \\
            { s4 a,4\staccato_"+" g,4\staccato_"+" r4 }
          >>
          <e, b, e b>4_"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          <b, b>8 <b, b>8 dis8 e8 fis8 g8 a8 b8
          <e, b, e b>4^"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <<
            { <g b>8 <g b>8 <g b>8 <fis a>8 <g b>8 <g b>8 <g b>8 b8 }
            \\
            { <e, b, e>4 <e, b, e>4 <e, b, e>4 <e, b, e>4 }
          >>
          b,8_"v" r8 a4 g4 fis4
          b,4_"v" r4 r2
          b,4_"v" r4 b,4_"v" r4
          <b, b>4^"v" <a, a>4^"R" <g, g>4 <fis, fis>4
          <e, b, e b>4_"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <e, b, e b>4_"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <e, b, e b>4_"R" <e, b, e b>4 <e, b, e b>4 <e, b, e b>4
          <<
            { b8 b8 b8 a8 b8 b8 b8 a8 }
            \\
            { <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 <d, g, d g>4 }
          >>
          <e, b, e g b>4 <d, a, d fis a>4 <c, g, c e g>4 <e, b, d fis b>4
          <e, b, e g b>4 <d, a, d fis a>4 <c, g, c e g>4 <e, b, d fis b>4
          <<
            { <e g b>8 <d fis a>8 <c e g c'>8 <d fis b>8 <e g b>8 <d fis a>8 <c e g c'>8 <d fis b>8 }
            \\
            { <e, b,>4 <d, a,>4 <c, g,>4 <e, b,>4 }
          >>
          <<
            { <e g b>8 <d fis a>8 <c e g c'>8 <d fis b>8 <e g b>8 <d fis a>8 <c e g c'>8 <d fis b>8 }
            \\
            { <e, b,>4 <d, a,>4 <c, g,>4 <e, b,>4 }
          >>
          <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <d, fis, a, d fis a>8
          <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <d, fis, a, d fis a>8
          <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <d, fis, a, d fis a>8
          <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <e, g, b, e g b>8 <d, fis, a, d fis a>8
          <e, g, b, e g b>4 r4 <e, g, b, e g b>4 r4
          <e, g, b, e g b>4 r4 <e, g, b, e g b>4 r4
          <e, g, b, e g b>4 r4 <e, g, b, e g b>4 r4
          <e, g, b, e g b>4 r4 <e, g, b, e g b>4 r4
          <e, b, e g b>1
          <e, b, e g b>4_"PL" r4 r2
          \bar "|."
      }
    >>
  >>
  \midi {
    \tempo 4 = 100
    \context {
      \Score
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.9
    }
  }
  \layout {
    #(layout-set-staff-size 24)
%    \context
%    {
%      \StaffGroup
%      \override StaffGrouper.score-score-spacing.basic-distance = #5
%    }
  }
}
