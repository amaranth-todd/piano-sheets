\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "Bedtime Story"
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
  \key f \minor
  \numericTimeSignature
  \time 6/8
  \tempo 4.=68 % "Eerily"?
}

right = \relative c' {
  \global
  
  r16 aes-2 c-1 f-2 aes-3 c-5 r aes, c f aes c | % 1
  r16 aes, c f aes c r aes, c f aes c | % 2
  r16 aes, d f aes d r aes, d f aes d | % 3
  r16 aes, d f aes d r aes, d f aes d | % 4
  r16 aes, des f aes des r aes, des f aes des | % 5
  r16 aes, des f aes des r aes, des f aes des | % 6
  r16 aes, c f aes c r aes, c f aes c | % 7
  r16 aes, c f aes c r aes, c f aes c | % 8
  r16 g, c e g c r g, c e g c | % 9
  r16 g, c e g c r g, c e g c | % 10
  R1*6/8\fermataMarkup | % 11
  \bar "||"
  \break
  
  \tempo 4=68
  \time 3/4 <f, f'>8 <aes aes'> <c c'> <aes aes'> <c c'> <g g'> | % 12
  \time 2/4 <e e'> <g g'> <des' des'> <aes aes'> | % 13
  \time 4/4 <f f'>8 <aes aes'> <c c'> <g g'> <e e'> <g g'> <aes aes'> <g g'> | % 14
  <aes aes'>8 <c c'> <c c'> <g g'> <e e'> <g g'> <des' des'>8 <aes aes'> | % 15
  \time 3/4 <f f'>8 <aes aes'> <c c'> <g g'> <e e'>4 | % 16
  \time 4/4 <f f'>8 <aes aes'> <c c'> <b b'> <c c'>4. <c c'>8 | % 17
  <b b'>8 <c c'> <aes aes'> <bes bes'> <g g'>2 | % 18
  <e e'>8 <aes aes'> <c c'> <b b'> <c c'>4. <c c'>8 | % 19
  <des des'>8 <c c'> <bes bes'> <c c'> <g g'>2 | % 20
  <aes aes'>8 <f f'> <g g'> <f f'> <bes bes'> <f f'> <g g'> <f f'> | % 21
  <aes aes'> <f f'> <g g'> <f f'> <ges ges'> <f f'> <aes aes'> <f f'> | % 22
  R1*4/4\fermataMarkup % 23
  \bar "|."
}

left = \relative c, {
  \global
  
  <f f'>4. <f f'> | % 1
  <f f'>4. <f f'> | % 2
  <f f'>4. <f f'> | % 3
  <f f'>4. <f f'> | % 4
  <f f'>4. <f f'> | % 5
  <f f'>4. <f f'> | % 6
  <f f'>4. <f f'> | % 7
  <f f'>4. <f f'> | % 8
  <e e'>4. <e e'> | % 9
  <e e'>4. <e e'> | % 10
  R1*6/8\fermataMarkup % 11
  
  \time 3/4 R1*3/4 | % 12
  \time 2/4 <e e'>4 des' | % 13
  \time 4/4 <f, f'>4 c' <e, e'> <f f'> | % 14
  aes4 c <e, e'> des' | % 15
  \time 3/4 <f, f'> aes <e e'> | % 16
  \time 4/4 <f f'>2. <f f'>4~ | % 17
  <f f'>2. <f f'>4 | % 18
  <e e'>2. <e e'>4~ | % 19 
  <e e'>2. <e e'>4 | % 20
  <<{ f'1~ } \\
    { f,2~ f8 f8~ f4~ }>> | % 21
  <<{ f'1 } \\
    { f,8 f~ f f~ f f~ f f } >> | % 22
  <f f'>1\fermata | % 23
  
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
