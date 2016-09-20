\version "2.18.2"

\header {
  title = \markup {
    \override #'(font-name . "GNUTypewriter")
    \fontsize #1
    "Lost On The Path"
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
  \key f \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4=90
}

right = \relative c'' {
  \global

  <<{ g2-> aes-> } \\ { f8 c f, c' f c' f, c }>> | % 1
  <<{ f1-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ g'2-> aes-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ f1-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ ees2-> f-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ f8 c f, c' f c' f, c } \\ { c1-> }>> |
  <<{ f8 c f, c' f c' f, c } \\ { bes2-> c-> }>> |
  <<{ f8 c f, c' f c' f, c } \\ { f,1-> }>> |
  \bar "||" \break
  
  <<{ g'2-> aes-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ f1-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ g'2-> aes-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ f1-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ ees2-> f-> } \\ { f8 c f, c' f c' f, c }>> |
  <<{ f8 c f, c' f c' f, c } \\ { c1-> }>> |
  <<{ f8 c f, c' f c' f, c } \\ { bes2-> c-> }>> |
  <<{ f8 c f, c' f c' f, c } \\ { f,1-> }>> |
  \bar "||" \break
  
  <<{ f'4-> g-> aes-> c,-> } \\ { f,8 c' f g aes f des c }>> |
  <<{ f4-> c'-> f,-> c'-> } \\ { f,8 c' f, c f c' f, c }>> |
  <<{ f4-> g-> aes-> c,-> } \\ { f,8 c' f g aes f des c }>> |
  <<{ f4-> c'-> f,-> c'-> } \\ { f,8 c' f, c f c' f, c }>> |
  <<{ f'4-> g-> aes-> c,-> } \\ { f,,8 c' f g aes f des c }>> |
  <<{ f'4-> c'-> f,-> c'-> } \\ { f,,8 c' f, c f c' f, c }>> |
  <<{ f'4-> g-> aes-> c,-> } \\ { f,,8 c' f g aes f des c }>> |
  <<{ f'2-> f-> } \\ { f,8 c' f, c f c' f, c }>> |
  \bar "||" \break
  
  \time 3/4
  f,8 c' f c' f, c |
  f,8 c' f c' f, c |
  aes8 c f c' f, c |
  aes8 c f c' f, c |
  g8 c g' c g c, |
  g8 c g' c g c, |
  f,8 c' f c' f, c |
  f,8 c' f c' f, c |
  \bar "||" \break
  
  f,8 c' f c' f, c |
  f,8 c' f c' f, c |
  aes8 c f c' f, c |
  aes8 c f c' f, c |
  g8 c g' c g c, |
  g8 c g' c g c, |
  f,8 c' f c' f, c |
  f,8 c' f c' f, c |
  \bar "|."
}

left = \relative c, {
  \global
  
  R1*4/4 |
  f1 |
  R1*4/4 |
  f1 |
  R1*4/4 |
  f1 |
  r2 r4 f |
  f8 c' g' aes~ aes2 |
  
  f,8 c' g' aes~ aes2 |
  f,8 c' g' aes~ aes2 |
  f,8 c' g' aes~ aes2 |
  f,8 c' g' aes~ aes2 |
  f,8 c' g' aes~ aes2 |
  f,8 c' g' aes~ aes2 |
  <<{ f,8 c' g' aes~ aes2 } \\ { f,,1 }>> |
  <<{ f'8 c' g' aes~ aes2 } \\ { f,,1 }>> |
  
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  
  \time 3/4
  f'8 f r4 r |
  f8 f r4 r |
  aes8 aes r4 r |
  aes8 aes r4 r |
  g8 g r4 r |
  g8 g r4 r |
  f8 f r4 r |
  f8 f r4 r |
  
  <<{ f'2.-> } \\ { f,8 f r4 r }>> |
  <<{ c'2.-> } \\ { f,8 f r4 r }>> |
  <<{ aes'2.-> } \\ { aes,8 aes r4 r }>> |
  <<{ f'2.-> } \\ { aes,8 aes r4 r }>> |
  <<{ g'2.-> } \\ { g,8 g r4 r }>> |
  <<{ c2.-> } \\ { g8 g r4 r }>> |
  <<{ f'2.-> } \\ { f,8 f r4 r }>> |
  <<{ e'2.-> } \\ { f,8 f r4 r }>> |
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
