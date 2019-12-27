# Set up stack completions if stack is installed
if [ -x $( command -v stack ) ]; then
  eval "$(stack --bash-completion-script stack)"
fi
