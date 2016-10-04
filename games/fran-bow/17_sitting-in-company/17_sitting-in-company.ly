\version "2.18.2"

%%% REDO ALL BAR NUMBERS! %%%

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
    r4. c8 a' f e c | % 1
    r4. c8 a' f e c | % 2
    r4. c8 g' f e c | % 3
    r4. c8 g' f e4 | % 4
  }
  \repeat volta 2 {
    r4. bes8 f' e d e | % 5
    r4. bes8 f' e d4 | % 6
  }
  \alternative {
    { r4. a8 f' e d a | r4. a8 f' e d4 | } % 8
    { r4. f8 e d a4 | cis4 cis8 a d a e'4 | } % 9
  }
  \bar "||" \break
  
  f4. c8 a'4 e | % 10
  f4. bes,8~ bes2 | % 11 
  d4. g,8 ees'4 c | % 12
  a8 bes c d~ d2 | \break % 13
  \key g \minor bes4. g8 d'4 bes | % 14
  a4. f8 d'4 d | % 15
  a4. fis8 d'4 a | % 16
  bes4. g8 d'2 | \break % 17
  ees4. g,8 ees'4 ees | % 18
  d4. g,8 d'4 d | % 19
  a4. f8 d'4 f, | % 20
  g2. bes4 | % 21
  \break
  
  \time 5/8 % Change \tempo 8=200 for clarity?
  \repeat volta 2 {
    g8 d bes' g a | % 22
    fis8 d a' fis g | % 23
    ees8 c g' ees fis | % 24
    fis8 d a' fis g | % 25
  }
  \time 4/4 g1 | % 26
  R1*4/4 | % 27
  \bar "|." 
}

left = \relative c' {
  \global

  \repeat volta 2 {
    c8 f a r r2 | % 1
    c,8 f a r r2 | % 2
    c,8 e g r r2 | % 3
    c,8 e g r r2 | % 4
  }
  \repeat volta 2 {
    bes,8 d f r r2 | % 5
    bes,8 d f r r2 | % 6
  }
  \alternative {
    { a,8 d f r r2 | a,8 d f r r2 | } % 8
    { a,8 d f r r2 | f,8 a cis r r2 | } % 9
  }
  
  f8 c a' r r2 | % 10
  bes,8 d f r r2 | % 11
  g,8 bes d r r2 | % 12
  f,8 a d4~ d2 | % 13
  \key g \minor g,8 bes d r r2 | % 14
  f,8 a d r r2 | % 15
  fis,8 a d r r2 | % 16
  g,8 bes d r r2 | % 17
  g,8 bes ees r r2 | % 18
  g,8 bes d r r2 | % 19
  f,8 a d r r2 | % 20
  \clef bass <g,, g'>2 <g g'> | % 21
  
  \time 5/8
  \repeat volta 2 {
    <g g'>4.~ <g g'>4 | % 22
    <fis fis'>4.~ <fis fis'>4 | % 23
    <ees ees'>4.~ <ees ees'>4 | % 24
    <fis fis'>4.~ <fis fis'>4 | % 25
  }
  \time 4/4 <g g'>1 | % 26
  <g, g'>1 | % 27
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
