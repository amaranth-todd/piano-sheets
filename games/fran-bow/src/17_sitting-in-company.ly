\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "Sitting In Company"
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
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo 4=100 % Feels "homely"??
}

right = \relative c'' {
  \global

  \repeat volta 2 {
    r4. c8 a' f e c |
    r4. c8 a' f e c |
    r4. c8 g' f e c |
    r4. c8 g' f e4 |
  }
  \repeat volta 2 {
    r4. bes8 f' e d e |
    r4. bes8 f' e d4 |
    r4. a8 f' e d a |
  }
  \alternative {
    { r4. a8 f' e d4 | }
    { cis4 cis8 a d a e'4 | }
  }
  \bar "||" \break
  
  f4. c8 a'4 e | %%% CHANGE THIS %%%
  f4. bes,8~ bes2 |
  d4. g,8 ees'4 c |
  a8 bes c d~ d2 | \break
  \key g \minor bes4. g8 d'4 bes |
  a4. f8 d'4 d |
  a4. fis8 d'4 a |
  bes4. g8 d'2 | \break
  ees4. g,8 ees'4 ees | 
  d4. g,8 d'4 d |
  a4. f8 d'4 f, |
  g2. bes4 |
  \break
  
  \time 5/8 % Change \tempo 8=200 for clarity?
  \repeat volta 2 {
    g8 d bes' g a |
    fis8 d a' fis g |
    ees8 c g' ees fis |
    fis8 d a' fis g |
  }
  \time 4/4 g1 |
  R1*4/4 |
  \bar "|." 
}

left = \relative c' {
  \global

  \repeat volta 2 {
    c8 f a r r2 | 
    c,8 f a r r2 | 
    c,8 e g r r2 |
    c,8 e g r r2 |
  }
  \repeat volta 2 {
    bes,8 d f r r2 |
    bes,8 d f r r2 |
    a,8 d f r r2 |
  }
  \alternative {
    { a,8 d f r r2 | }
    { f,8 a cis r r2 | }
  }
  
  f8 c a' r r2 |
  bes,8 d f r r2 |
  g,8 bes d r r2 |
  f,8 a d4~ d2 |
  \key g \minor g,8 bes d r r2 |
  f,8 a d r r2 |
  fis,8 a d r r2 |
  g,8 bes d r r2 |
  g,8 bes ees r r2 |
  g,8 bes d r r2 |
  f,8 a d r r2 |
  \clef bass <g,, g'>2 <g g'> |
  
  \time 5/8
  \repeat volta 2 {
    <g g'>4.~ <g g'>4 | 
    <fis fis'>4.~ <fis fis'>4 |
    <ees ees'>4.~ <ees ees'>4 |
    <fis fis'>4.~ <fis fis'>4 |
  }
  \time 4/4 <g g'>1 |
  <g, g'>1 |
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
    } { \clef treble \left }
  >>
  \layout { }
  \midi { }
}
