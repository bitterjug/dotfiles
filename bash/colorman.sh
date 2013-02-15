# Less Colors for Man Pages
# Blnk
export LESS_TERMCAP_mb=$(tput bold; tput setaf 6) 
# Bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 184) 
# End all -- normal
export LESS_TERMCAP_me=$(tput sgr0)
# Standout
export LESS_TERMCAP_so=$(tput bold; tput setab 6; tput setaf 15)
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start Underline
export LESS_TERMCAP_us=$(tput smul; tput setaf 178)
# End Underline
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
# Reverse
export LESS_TERMCAP_mr=$(tput rev)
# Half Bright
export LESS_TERMCAP_mh=$(tput dim)
# Stat Subsecipt
export LESS_TERMCAP_ZN=$(tput ssubm)
# End Subsecipt
export LESS_TERMCAP_ZV=$(tput rsubm)
# Start Superscript
export LESS_TERMCAP_ZO=$(tput ssupm)
# End Superscript
export LESS_TERMCAP_ZW=$(tput rsupm)
