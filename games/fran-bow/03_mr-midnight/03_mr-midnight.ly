\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "Mr. Midnight"
  }
  subtitle = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "From “Fran Bow”"
  }
  composer = \markup {
    \override #'(font-name . "GNUTypewriter")
    "Composed by Isak J Martinsson"
  }
  arranger = \markup {
    \override #'(font-name . "GNUTypewriter")
    "Transcribed by AlisonDoesAThing"
    %"Arranged by AlisonDoesAThing"
  }
  % Remove default LilyPond tagline
  tagline = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key c \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4=100
}

right = \relative c'' {
  \global

  ees2 c |
  d1 |
  ees2 g |
  d1 | \break
  c2 <g' c>4 <f bes> |
  <g c>2 ees |
  c2 <g' c>4 <f bes> |
  <g c>1 |
  \bar "||" \break
  
  ees2 g |
  d2 g |
  c,2 <g' c>4 <f bes> |
  <g c>2 ees | \break
  c2 <g' c>4 <f bes> |
  <g c>2 ees4 d |
  c2 c4 bes |
  g2 bes' | \break
  bes2 ees,4 g |
  f2 aes |
  <c, g'>2. ees4 |
  d2 c |
  \bar "|."
  
  
}

left = \relative c' {
  \global

  c1 |
  g1 |
  c1 |
  g1 |
  aes1 |
  g1 |
  aes1 |
  g1 |
  
  <c,, c'>1 |
  <g' g'>1 |
  <aes aes'>1 |
  <g g'>1 |
  <aes aes'>1 |
  <g g'>1 |
  <aes aes'>1 |
  <bes bes'>1 |
  <ees ees'>1 |
  <f, f'>1 |
  <c c'>1~ |
  <c c'>1 |
  
}

\score {
  \new PianoStaff \with {
    %instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
