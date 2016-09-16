\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "When Things Are Said"
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
  \key g \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4=63
}

right = \relative c'' {
  \global

  g8 bes g bes g bes g bes | % 1
  g8 bes g bes g bes g bes | % 2
  d8 g, d' g, d' g, d' g, |  % 3
  g8 bes g bes g bes g bes | \break % 4
  g8 bes g bes g bes g bes | % 5
  g8 bes g bes g bes g bes | % 6
  d8 g, d' g, d' g, d' g, | % 7
  d'8 g, d' g, d' g, d' g, | \break % 8
  bes8 g bes g bes g bes g | % 9
  bes8 g bes g bes g bes g | % 10
  d'8 g, d' g, d' g, d' g, | % 11
  g8 bes g bes g a g a | \break % 12
  g8 bes g bes g bes g bes | % 13
  g8 bes g bes g bes g bes | % 14
  d8 g, d' g, d' g, d' g, | % 15
  g8 bes g bes g a g a | \break % 16
  g8 bes g bes g bes g bes | % 17
  g8 bes g bes g bes g bes | % 18
  d8 g, d' g, d' g, d' g, | % 19
  d'8 g, d' g, d' g, d' g, | \break % 20
  bes8 g bes g bes g bes g | % 21
  bes8 g bes g a g a g | % 22
  d'8 g, d' g, d' g, d' g, | % 23
  g1 | \bar "|." % 24  
}

left = \relative c {
  \global

  r4 ees f2 | c1 | % 2
  bes2 c | g1 | % 4
  ees'2 c | g1 | % 6
  ees'2 f | c1 | % 8
  ees2 f | c1 | % 10
  bes2 c | g1 | % 12
  bes2 c | g1 | % 14
  ees'2 c | g1 | % 16
  bes2 c | g1 | % 18
  ees'2 f | c1 | % 20
  ees2 f | c1 | % 22
  bes2 c | g1 | % 24
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
