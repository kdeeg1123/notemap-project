\version "2.22.2"

\header {
  title = "Title"
  composer = "Composer"
  arranger = "Arranger"
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

\score {
  <<
    \set Score.barNumberVisibility = #all-bar-numbers-visible
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
    \new StaffGroup
    <<
      \new Staff = "treble" {
        \key c \major
        \absolute {
          d'4 e' f' g' a' b' c'' d'' e'' f'' g'' a'' b'' c'''
        }
      }
      
      \new Staff = "bass" {
        \key c \major
        \clef bass
        \absolute {
          % Bass goes here
          c,4 d,4 e,4 f,4 g,4 a,4 b,4 c4 d4 e4 f g a b c'
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 24)
    \context {
      \StaffGroup
      \override StaffGrouper.score-score-spacing.basic-distance = #5
    }
  }
}