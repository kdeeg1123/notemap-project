\version "2.22.2"

\header {
  title = "CW Alma Mater"
  subtitle = "How Can I Leave Thee?"
  composer = "C. Cramer"
  arranger = "Deeg"
  tagline = ""
}

\paper {
  top-margin = 0.75\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

SopranoMusic = \absolute {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \tempo 4 = 90
  \key aes \major
  \numericTimeSignature
  \time 4/4
  <ees' c''>2 <c' aes'>4 <des' f'>4
  <c' ees'>4 <c' aes'>4 <c' aes'>2
  <des' bes'>2 <c' a'>4 <des' bes'>4
  <ees' c''>4 <des' f'>4 <c' ees'>2
  <c' ees'>2 <b d'>4 <c' ees'>4
  <des' f'>4 <f' des''>4 <ees' c''>2
  <d' bes'>2 <d' c''>4 <d' bes'>4
  ees'2. r4
  <des' bes'>2 <ees' c''>4 <des' bes'>4
  <c' aes'>4 <des' f'>4 <c' ees'>2
  <ees' c''>2 <f' des''>4 <ees' c''>4
  <des' f'>4 <ees' c''>4 <des' bes'>2
  <des' ees'>2 <des' f'>4 <des' ees'>4
  <c' ees'>4 <f' des'>4 <ees' c''>2
  <d' bes'>2 <des' f'>4 <des' g'>4
  <c' aes'>1
  \bar "|."
}

BassMusic = \absolute {
  \key aes \major
  \clef bass
  \numericTimeSignature
  \time 4/4
  <aes, aes>2 <aes, ees>4 <aes, aes>4
  <aes, aes>4 <aes, ees>4 <aes, ees>2
  <ees g>2 <ees fis>4 <ees g>4
  <aes, aes>4 <aes, aes>4 <aes, aes>2
  <aes, aes>2 <aes, aes>4 <aes, aes>4
  <des aes>4 <des aes>4 <aes, aes>2
  <bes, aes>2 <bes, aes>4 <bes, aes>4
  <ees g>2. r4
  <ees g>2 <ees g>4 <ees g>4
  <<
    { <aes, aes>4 <des aes>4 aes2 }
    \\
    { s2 aes4 ges4 }
  >>
  <f a>2 <f a>4 <f a>4
  <bes, bes>4 <bes, f>4 <bes f>2
  <ees g>2 <ees aes>4 <ees g>4
  <aes, aes>4 <aes, aes>4 <aes, aes>2
  <bes, f>2 <bes, bes>4 ees4
  <aes, ees>1
  \bar "|."
}

HandbellTrebleMusic = \absolute {
  \key aes \major
  \numericTimeSignature
  \time 4/4
  \clef treble
  <ees' aes' c'' ees'' aes''>2 <ees' aes' c'' ees''>4 <des' f' aes' des''>4
  <ees' aes' c''>4 <ees' aes' c'' ees''>4 <ees' aes' c'' ees'' aes''>2
  <des' ees' g' bes' des'' ees'' g'' bes''>2 <ees' fis' a' c'' ees'' fis'' a''>4 <des' ees' g' bes' des'' ees'' g'' bes''>4
  <ees' aes' c'' ees'' aes'' c'''>4 <des' f' aes' des'' f''>4 <ees' aes' c'' ees''>2
  <ees' aes' c''>2 <d' aes' b' d''>4 <ees' aes' c''>4
  <des' f' aes' des''>4 <des' f' aes' des'' f''>4 <ees' aes' c'' ees''>2
  <d' aes' bes' d''>2 <d' aes' c'' d''>4 <d' aes' bes' d''>4
  <ees' g' ees'' g''>2. r4
  <des' ees' g' bes' des'' ees'' g'' bes''>2 <ees' g' c'' ees'' g'' c'''>4 <des' ees' g' bes' des'' ees'' g'' bes''>4
  <<
    { <ees' aes' c'' ees'' aes''>4 <des' f' aes' des'' f''>4 <ees' aes' c'' ees''>2 }
    \\
    { s2. ges'4 }
  >>
  <ees' f' a' c'' ees'' f''>2 <f' a' des'' f''>4 <ees' f' a' c'' ees'' f''>4
  <des' f' bes' des''>4 <ees' f' bes' c'' ees'' f'' bes'' c'''>4 <des' f' bes' des'' f'' bes''>2
  <des' ees' g' des'' ees''>2 <des' f' aes' des'' f''>4 <des' ees' g' des'' ees''>4
  <ees' aes' c'' ees''>4 <des' f' aes' des'' f''>4 <ees' aes' c'' ees'' aes'' c'''>2
  <d' f' bes' d'' f'' bes''>2 <des' f' bes' des'' f''>4 <des' ees' g' des'' ees'' g''>4
  <<
    { s2 <aes'' c'''>2 }
    \\
    { <ees' aes' c'' ees''>1 }
  >>
}

HandbellBassMusic = \absolute {
  \key aes \major
  \numericTimeSignature
  \time 4/4
  \clef bass
  <<
    {
      <ees aes>2 <c ees aes c'>4 <des f aes>4
      <ees aes c'>4 <ees aes c'>4 <aes, c ees aes c'>2
      <aes, des g bes>2 <c ees fis a c'>4 <des ees g bes>4
      <ees aes c'>4 <des f aes>4 <aes, ees aes c'>2
      <aes, ees aes c'>2 <aes, b, d aes b>4 <aes, ees aes c'>4
      <f aes>4 <f aes>4 <aes, ees aes c'>2
      <bes, d aes bes>2 <c d aes>4 <d aes bes>4
      <ees, bes, ees g bes>2. r4
      <des ees g bes>2 <ees g c'>4 <des ees g bes>4
      <aes, ees aes c'>4 <des f aes>4 <ees aes c'>2
      <c ees f a c'>2 <des f a>4 <c ees f a c'>4
      <des f bes>4 <ees f bes c'>4 <bes, des f bes>2
      <des ees g>2 <des f aes>4 <des ees g>4
      <ees aes c'>4 <des f aes>4 <aes, c ees aes c'>2
    }
    \\
    {
      aes,1
      aes,2 s2
      s2 aes,2
      aes,2 s2
      s1
      des2 s2
      s2 bes,2
      s1
      ees,1
      s2. ges4
      s1
      bes,2 s2
      ees,1
      aes,2 s2
    }
  >>
  <bes, d f bes>2 <bes, des f bes>4 <ees, des ees g>4
  <aes, ees aes c'>1
  \bar "|."
}

\score {
  \new StaffGroup
  <<
    \cadenzaOff
    \new Staff = "upper" {
      \key c \major
      \hide Stem
      d'4 ees' f' g' aes' bes' c'' d'' ees'' f'' g'' aes'' bes'' c''' d''' ees''' f'''
      \undo \hide Stem
    }
    \new Staff = "lower" {
      \clef "bass"
      \key c \major
      \hide Stem
      ees, g, aes, bes, c d ees f g aes bes c'
      \undo \hide Stem
    }
    \cadenzaOn
  >>
}


\score {
  \new StaffGroup <<
    \set Score.barNumberVisibility = #all-bar-numbers-visible
    \new Staff { \SopranoMusic \addlyrics {
        We love you Win ches ter Loy -- al and true we'll be. Our hearts we pledge
        to thee for ev -- er more As through the years we go, thy hon -- or still to see.
        We'll al -- ways cher -- ish thee, Dear Win -- chest -- er.
      }
    }
    \new Staff { \BassMusic }
    \new GrandStaff <<
      \new Staff { \HandbellTrebleMusic }
      \new Staff { \HandbellBassMusic }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}