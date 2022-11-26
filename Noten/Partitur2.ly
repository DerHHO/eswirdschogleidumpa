\version "2.18.2"

#(set-global-staff-size 18)
\include "dynamicparams.ly"
\paper { 
    
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
print-all-headers = ##t
#(include-special-characters)

	
}

\header {
  %{subsubtitle = \subSubTitleODuFroehlicheWadsack

  title = "Es wird scho glei dumpa"
  arranger = "S: Martin Wadsack, 29.9.2018"
  poet = "T: Anton Reidinger (1839–1912) 1884"
  composer = "M: Anton Reidinger nach „Maria, dich lieben“"%}
  tagline = ##f
  
}

\include "Es wird scho glei dumpa_Score2.ly"
