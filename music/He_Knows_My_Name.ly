\version "2.18.2"
\header {
  title = "He Knows My Name"
  tagline = ""
  composer = "Tommy Walker"
  instrument = "Violin 1"
}
\language "english"
\score {
  \relative c'' {
    \time 4/4
    \key ef \major
    \set Score.barNumberVisibility = #all-bar-numbers-visible

    % 1
      \once \override Score.RehearsalMark.self-alignment-X = #LEFT
      \mark \markup { \box \bold INTRO }
      af4.\mp g8 ~ g2
    % 2
      f4. g8 ~ g2
    % 3
      r4 ef8 f8 ~ f4 ef4
    % 4
      ef1 \break
    \repeat volta 2 {
      % 5
        \once \override Score.RehearsalMark.self-alignment-X = #LEFT
        \mark \markup { \box \bold Verse }
        bf''1^\markup{ \italic "N.V." } ~
      % 6
        bf1 ~
      % 7
        bf1 ~
      % 8
        bf1 \break
      % 9
        r4^\markup{ \italic \small "2nd time only" } g,8 af8 ~ af2
      % 10
        bf4. c8 ~ c2
      % 11
        bf4. bf8 ~ bf2 \break
    }
    \alternative {
      {r1^\markup{ \italic \small{ REPEAT to Verse}}}
      {r4^\markup{ \italic \small{ to Chorus}} ef8\< ( f8 ) g8 ( af8 bf4\! )}
    }
  }
}

