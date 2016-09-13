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

  ees2 c | % 1
  d1 | % 2
  ees2 g | % 3
  d1 | \break % 4
  c2 <g' c>4 <f bes> | % 5
  <g c>2 ees | % 6
  c2 <g' c>4 <f bes> | % 7
  <g c>1 | % 8
  \bar "||" \break
  
  ees2 g | % 9
  d2 g | % 10
  c,2 <g' c>4 <f bes> | % 11
  <g c>2 ees | \break % 12
  c2 <g' c>4 <f bes> | % 13
  <g c>2 ees4 d | % 14
  c2 c4 bes | % 15
  g2 bes' | \break % 16
  bes2 ees,4 g | % 17
  f2 aes | % 18
  <c, g'>2. ees4 | % 19
  d2 c | % 20
  \bar "|."
}

left = \relative c' {
  \global

  c1 | g1 | c1 | g1 | % 4
  aes1 | g1 | aes1 | g1 | % 8
  
  <c,, c'>1 | % 9
  <g' g'>1 | % 10
  <aes aes'>1 | % 11
  <g g'>1 | % 12
  <aes aes'>1 | % 13
  <g g'>1 | % 14
  <aes aes'>1 | % 15
  <bes bes'>1 | % 16
  <ees ees'>1 | % 17
  <f, f'>1 | % 18
  <c c'>1~ | % 19
  <c c'>1 | % 20 
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
