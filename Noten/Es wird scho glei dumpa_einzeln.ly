\version "2.18.2"

#(set-global-staff-size 16)
\header {
  tagline = ##f
}
\include "Es wird scho glei dumpa_Score.ly"

\score {
  \midi {
    \tempo 4 = 80
  }
  \scoreDumpaVierstimmigVierSysteme
}

\paper {
  print-all-headers = ##t
  ragged-last-bottom = ##f
}