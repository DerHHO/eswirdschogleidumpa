\version "2.18.2"

\include "formatangaben.ly"

globalDumpa = {
  \time 3/4
  \key g\major
  \autoBeamOff
  \taktstil
}

sopranNotenDumpa = \relative d' {
  \globalDumpa
  \partial 4 d4 |
  g g a |
  b8([ d]) d4. c8 |
  b4 b a |
  g2 \breathe d4 |

  g g a |
  b8([ d]) d4. c8 |
  b4 b a |
  g2 \breathe d'4 |
  d b d |
  d8([ c]) a4. c8 |
  b4 g b |
  a2 \breathe d,4 |

  g g a |
  b8([ d]) d4. c8 |
  b4 b a |
  g2 \breathe c8([ fis,]) |
  g2 a8([ d,]) |
  g2 \breathe g8([ b]) |
  d4 b8([ g]) a([ d,]) |
  g2 \bar "|."
}

altNotenDumpa = \relative c' {
  \globalDumpa
  \partial 4 d4 |
  b4 b d |
  d8([ g]) g4. g8 |
  g4 g fis |
  d2 \breathe d4 |
  d4 d d |
  d8([ g]) g4. g8 |
  g4 g fis |
  d2 \breathe g4 |
  g g g |
  g a4. fis8 |
  g4 d g |
  fis2 \breathe d4 |
  d4 d c |
  d8([ g]) g4. g8 |
  g4 g fis |
  d2 \breathe fis8([ d]) |
  d2 d8([ c]) |
  b2 \breathe d8([ g]) |
  g4 d d8([ c]) |
  b2 \bar "|."

}

tenorNotenDumpa = \relative d {
  \globalDumpa
  \partial 4 d4 |
  d4 d fis |
  g8([ b]) b4. e8 |
  d4 d c |
  b2 \breathe fis4 |
  g4 g fis |
  g8([ b]) b4. e8 |
  d4 d c |
  b2 \breathe b4 |
  b4 g b |
  b8([ a]) fis4 fis8([ d']) |
  d4 b d |
  d2 \breathe fis,4 |
  g4 g fis |
  g8([ b]) b4. e8 |
  b8([ c]) d4 c |
  b2 \breathe e8([ c]) |
  b4( g) fis4 |
  g2 \breathe b8([ d]) |
  b4 g fis |
  g2 \bar "|."

}

bassNotenDumpa = \relative c {
  \globalDumpa
  \clef "bass"
  \partial 4 d4 |
  g,4 g d' |
  g,4 g4 c |
  d4 d d |
  g,2 \breathe d'8([ c]) |
  b4 b d |
  g,4 g4 c |
  d4 d d |
  g,2 \breathe g4 |
  g g g |
  d'4 d4. d8 |
  g4 g g |
  d2 \breathe d8([ c]) |
  b4 b a |
  g4 g4 c4 |
  d4 d d |
  g,2 \breathe d'4 |
  g,4( b) c8([ a]) |
  g2 \breathe g4 |
  g g8([ b]) c8([ a]) |
  g2 \bar "|."

}

stropheIDumpa = \lyricmode {
  \set stanza = "1."
  Es wird scho glei dum -- pa, es wird scho glei Nåcht,
  drum kimm i zu dir her, mei Hei -- land, auf d’Wåcht.
  Wü sin -- ga a Lia -- dl dem Lia -- bling, dem kloan,
  du mågst ja net schlå -- fn, i hear di nur woan.
  \set stanza = "1.–4." Hei hei, hei hei! Schlåf siaß, herz -- liabs Kind!

}

stropheIIDumpa = \lyricmode {
  \set stanza = "2."
  Ver -- giß jetzt, o Kin -- derl, dein Kum -- ma, dei Load,
  dass du da muasst lei -- d’n im Stoi auf da Hoad.
  Es ziern ja die En -- gerl dei Lia -- ga -- statt aus,
  mecht sche -- na net sein drin an Kö  -- nig sein Haus.
  %Hei hei, hei hei! Schlåf siaß, du liabs Kind!

}

stropheIIIDumpa = \lyricmode {
  \set stanza = "3."
  Ja Kin -- derl, du bist halt im Krip -- perl so schön,
  mi ziemt, i kann nim -- mer da weg von dir gehn.
  I wünsch dir von Her -- zen die sia -- ße -- ste Ruah,
  die En -- gerl vom Him -- mel, die de -- cken di zua.
  %Hei hei, hei hei! Schlåf siaß, du schöns Kind!

}

stropheIVDumpa = \lyricmode {
  \set stanza = "4."
  Schliaß zua dei -- ne Äu -- gerl in Ruah und in Fried
  und gib ma zum Ab -- schied dein Se -- gn no mit.
  Dann wird a mei Schla -- ferl a sor -- gen -- los' sein,
  dann kann i mi ruah -- li aufs Nie -- der -- leg’n gfrein.
  %Hei hei, hei hei! Schlåf siaß, mei liabs Kind!
}

scoreDumpaZweiSysteme = {
  
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { Sopran Alt }
      shortInstrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \sopranNotenDumpa }
      \new Voice = "alto" { \voiceTwo \altNotenDumpa }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \stropheIDumpa
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \stropheIIDumpa
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \stropheIIIDumpa
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \stropheIVDumpa
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { Tenor Bass }
      shortInstrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenorNotenDumpa }
      \new Voice = "bass" { \voiceTwo \bassNotenDumpa }
    >>
  >>
}

scoreDumpa = {
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.instrumentName = "Sopran"
      \set Staff.shortInstrumentName = "S"
      \new Voice = "vsop" {
        \sopranNotenDumpa
      }
      \addlyrics \stropheIDumpa
      \addlyrics \stropheIIDumpa
      \addlyrics \stropheIIIDumpa
      \addlyrics \stropheIVDumpa
    >>
    \new Staff <<
      \set Staff.instrumentName = "Alt"
      \set Staff.shortInstrumentName = "A"
      \new Voice = "valt" {
        \altNotenDumpa
      }
      \addlyrics \stropheIDumpa
      \addlyrics \stropheIIDumpa
      \addlyrics \stropheIIIDumpa
      \addlyrics \stropheIVDumpa
    >>
    \new Staff <<
      \set Staff.instrumentName = "Tenor"
      \set Staff.shortInstrumentName = "T"
      \new Voice = "vten" {
        \clef "G_8"
        \tenorNotenDumpa
      }
      \addlyrics \stropheIDumpa
      \addlyrics \stropheIIDumpa
      \addlyrics \stropheIIIDumpa
      \addlyrics \stropheIVDumpa
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "B"
      \new Voice = "vbass" {
        \bassNotenDumpa
      }
      \addlyrics \stropheIDumpa
      \addlyrics \stropheIIDumpa
      \addlyrics \stropheIIIDumpa
      \addlyrics \stropheIVDumpa
    >>
  >>
                 
}

