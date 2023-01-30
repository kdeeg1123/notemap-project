\version "2.22.2"

\header {
  title = "Kyrie"
  composer = "Mr. Mister"
  arranger = "Deeg"
  tagline = ""
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
        \key f \major
        \absolute {
          \stemDown c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16
          %\stemDown c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16 c''16 \change Staff="bass" \stemUp c'16 \change Staff="treble" \stemDown f'16 g'16
          \stemNeutral
          r4 <f' c''>4~ <f' c''>8. <f' c''>16 <f' c''>8 <f' c''>8
          <d' f' c''>8 <d' f' bes'>8 r4 r2
          r4 <e' c''>4~ <f' c''>8. <f' c''>16 <f' c''>8 <d' f' d''>8
          <d' c''>8 <d' bes'>8 r4 r2
          r4 <<
            { c''2~ c''8. d''16 }
            \\
            { <e' g'>4 <d' f' bes'>4~ <d' f' bes'>8. <d' f' bes'>16 }
          >>
          c''1~
          c''1
          <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16^"+" bes'16^"+"
          <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16^"+" bes'16^"+"
          <<
            {
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g''16^"+" bes''16^"+"
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16^"+" bes'16^"+"
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 g'16 g'16~ g'16 g'8 g'16~ g'8 f'16 f'16~ f'16 e'8 d'16~
              d'16 f'8 e'16~ e'4 r2
              \revert NoteHead #'style
            }
          >>
          <<
            {
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g''16^"+" bes''16^"+"
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16^"+" bes'16^"+"
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 g'16 g'16~ g'16 g'8 g'16~ g'8 r16 e'16~ e'16 <g' c''>8 <d' f' bes'>16~
              <d' f' bes'>1
              \revert NoteHead #'style
            }
          >>
          <<
            {
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g''16^"+" bes''16^"+"
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16^"+" bes'16^"+"
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8. bes'16 bes'16 a'8 a'16~ a'8 f'16 f'16~ f'16 d'8 d'16~
              d'16 g'8 g'16~ g'2 r4
              \revert NoteHead #'style
            }
          >>
          <<
            {
              <c'' f'' g'' bes''>4. <f'' g'' bes''>8^"V" <f'' g'' bes''>8.^"V|" <e'' bes''>16^"V" r8 g''16 bes''16
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8 g'16 bes'16
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8. g'16~ g'16 g'8 g'16 g'8 e'16 f'16~ f'16 <f' c''>8 <d' f' bes'>16~
              <d' f' bes'>2. r4
              \revert NoteHead #'style
            }
          >>
          <<
            {
              <c'' f'' g'' bes''>4. <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r8. <c'' f'' g'' bes'' c'''>16~
              <c'' f'' g'' bes''>4 <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8. <c'' f'' g'' bes''>16^"V" r4
              <c'' f'' g'' bes''>4 <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r4
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              s1
              r4 g'16 g'8 g'16~ g'8 f'16 f'16~ f'16 e'8 d'16~
              d'16 f'8 e'16~ e'4 r2
              \revert NoteHead #'style
            }
          >>
          <<
            { <c'' f'' g'' bes''>4 <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V" r4 }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8. g'16~ g'8 g'16 g'16~ g'16 g'8 e'16 f'16~ f'16 <f' g' c''>8
              \revert NoteHead #'style
            }
          >>
          <<
            {
              <c'' f'' g'' bes''>4
              <c'' f'' g'' bes''>8^"V" <c'' f'' g'' bes''>8^"V"
              <c'' f'' g'' bes''>8.^"V|" <c'' e'' bes''>16^"V"
              r4
            }
            \\
            {
              \override NoteHead #'style = #'harmonic-mixed
              <d' f' g' bes'>2. r4
              \revert NoteHead #'style
            }
          >>
          % Page 12
        }
      }
      
      \new Staff = "bass" {
        \key f \major
        \clef bass
        \absolute {
          % Bass goes here
          R1
          %R1
          <<
            { s4 <a c'>4~ <a c'>8. <a c'>16 <a c'>8 <a c'>8 }
            \\
            { <f, c f g c'>1 }
          >>
          <<
            { bes8 bes8 r4 r2 }
            \\
            { <g, d g>1 }
          >>
          <<
            { r4 <g c'>4~ <a c'>8. <a c'>16 <a c'>8 a8 }
            \\
            { <a, e>1 }
          >>
          <<
            { <f c'>8 <f bes>8 r4 r2 }
            \\
            { <bes, d>1 }
          >>
          r4 g4 r2
          <<
            { c'1~ c'1 }
            \\
            {
              <c, c f g bes>4. <c, c f g bes>8_"V" <c, c f g bes>8._"V|" <c, c e bes>16_"V" r8 g,16_"+" bes,16_"+"
              <c, c f g bes>4. <c, c f g bes>8_"V" <c, c f g bes>8._"V|" <c, c e bes>16_"V" r8 g,16_"+" bes,16_"+"
            }
          >>
          <<
            { <c f g bes>4. <c f g bes>8^"V" <c f g bes>8.^"V|" <c e bes>16^"V" r4 }
            \\
            { c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+" }
          >>
          <<
            { <c f g bes>4. <c f g bes>8^"V" <c f g bes>8.^"V|" <c e bes>16^"V" r4 }
            \\
            { c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+" }
          >>
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 g16 g16~ g16 g8 g16~ g8 f16 f16~ f16 e8 d16~
              d16 f8 e16~ e4 r2
              \revert NoteHead #'style
            }
            \\
            {
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
            }
          >>
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 g16 g16~ g16 g8 g16~ g8 r16 e16 e16 c'8 bes16~
              bes1
              \revert NoteHead #'style
            }
            \\
            {
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c,16_"+" bes,16_"+" f,16_"+" f,16_"+" bes,16_"+"
            }
            \\
            {
              s1
              <f g>4. <f g>8^"V" <f g>8.^"V|" <f g>16^"V" r4
            }
          >>
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8. bes16 bes16 a8 a16~ a8 f16 d16~ d8 d16~
              d16 g8 g16~ g2 r4
              \revert NoteHead #'style
            }
            \\
            {
              bes,16_"+" f,16_"+" bes,16_"+" bes,16_"+" f,16_"+" a,16_"+" bes,16_"+" f,16_"+" g,16_"+" bes,16_"+" f,16_"+" g,16_"+" g,16_"+" f,16_"+" f,16_"+" bes,16_"+"
              bes,16_"+" f,16_"+" bes,16_"+" bes,16_"+" f,16_"+" a,16_"+" bes,16_"+" f,16_"+" g,16_"+" bes,16_"+" f,16_"+" g,16_"+" g,16_"+" f,16_"+" f,16_"+" c,16_"+"
            }
          >>
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8. g16~ g16 g8 g16 g8 e16 f16~ f16 c'8 bes16~
              bes2. r4
              \revert NoteHead #'style
            }
            \\
            {
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
              c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
            }
          >>
          c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
          c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 c16 f16~ f16 g8 bes16~ bes16 a8 g16~ g4
              \revert NoteHead #'style
            }
            \\
            { c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+" }
          >>
          <<
            {
              \override NoteHead #'style = #'harmonic-mixed
              r8 <g c'>16 c'16~ c'8 c'16 c'16~ c'8 c'16 c'16~ c'16 bes8.
              \revert NoteHead #'style
            }
            \\
            { c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+" }
          >>
          c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" c,16_"+" g,16_"+" bes,16_"+" c,16_"+" g,16_"+" c16_"+" bes,16_"+" bes,16_"+" bes,16_"+" c,16_"+"
        }
      }
    >>
  >>
  \midi {
  \tempo 4 = 65
  \context {
    \Score
    midiMinimumVolume = #0.2
    midiMaximumVolume = #0.9
    }
  }
  \layout {
    #(layout-set-staff-size 24)
    \context {
      \StaffGroup
      \override StaffGrouper.score-score-spacing.basic-distance = #5
      \override StaffGrouper.staff-staff-spacing.padding = #5
    }
  }
}
