\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "A Little Talk"
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
  \partial 4
  % \tempo "*something goes here" 4=90
  \tempo 4=90
}

right = \relative c'' {
  \global
  g8 bes | % pickup
  \repeat volta 2 {
    d4. g,8 ees'4 g,8 bes | % 1
    d4. g,8 des'4 g,8 bes | % 2
    \time 9/8 d4. g,8 ees'4~ ees8 g4 | % 3
    \time 4/4 f4. d8~ d2~ | % 4
  }
  \alternative {
    { \time 7/8 d2~ d8 g, bes | } % 5 THIS BAR IS WONKY
    { \time 4/4 d1 | } % 6
  }
  \bar "||"
  \break
  
  c4. g8~ g2~ | % 7
  \time 7/8 g2~ g8 d'4 | % 8
  \time 4/4 c4. a8~ a2~ | % 9
  \time 3/4 a2. | % 10
  \time 4/4 g4. g8~ g2~ | % 11
  \time 7/8 g2~ g8 bes4 | % 12
  \time 4/4 a4. a8~ a2~ | % 13
  a1 | % 14 CONSIDER 6/4??
  \time 2/4 r8 g bes a | % 15
  \bar "||"
  \break
  
  \time 4/4 d4 g,2.~ | % 16
  g2 r8 g bes a | % 17
  d4 g,2.~ | % 18
  g2 r8 g bes a | % 19
  c4 g2.~ | % 20
  g2. g4 | % 21
  a4 fis2.~ | % 22
  fis2 fis4 g | % 23
  bes4 g2.~ | % 24
  g2 bes4 a | % 25
  c4 g2.~ | % 26
  g2 bes4 a | % 27
  d4 g,2.~ | % 28
  g2 d'4 g, | % 29
  bes4 a2.~ | % 30
  a1 | % 31
  \bar "|."
}

left = \relative c' {
  \global
  r4 | % pickup
  \repeat volta 2 {
    <<{ s4 d2. } \\ { r8 g,~ g2. }>> | % 1 THE REST IS WEIRD HERE WHY???
    <<{ s4 d'2. } \\ { r8 g,~ g2. }>> | % 2
    \time 9/8 <<{ s4 d'8~ d4.~ d4. } \\ { r8 g,4~ g4.~ g4. }>> | % 3
    \time 4/4 f8 a d2. | % 4
  }
  \alternative {
    { \time 7/8 f,8 a c4~ c4. | } % 5
    { \time 4/4 d,8 a' c2. | } % 6
  }
  
  ees,8 g bes2.~ | % 7
  \time 7/8bes2~ bes4. | % 8
  \time 4/4f8 a d2.~ | % 9
  \time 3/4 d2. | % 10
  \time 4/4 ees,8 g bes2.~ | % 11
  \time 7/8 bes2~ bes4. | % 12
  \time 4/4 d,8 fis a2.~ | % 13
  a1~ | % 14
  \time 2/4 a2 | % 15
  
  \time 4/4 g,8 d' g bes g d g, d' | % 16
  g8 bes~ bes2. | % 17
  f,8 a d a' f d f, a | % 18
  d8 a'~ a2. | % 19
  ees,8 g bes c bes g ees g | % 20
  bes8 c~ c2. | % 21
  d,8 fis a bes a fis d fis | % 22
  a8 bes~ bes2. | % 23
  g8 d' g bes g d g, d' | % 24
  g8 bes~ bes2. | % 25
  f,8 a d a' f d f, a | % 26
  d8 a'~ a2. | % 27
  ees,8 g bes c bes g ees g | % 28
  bes8 c~ c2. | % 29
  d,8 fis a bes a fis d fis | % 30
  a8 bes~ bes2. | % 31
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
