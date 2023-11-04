# Set up stack completions if stack is installed
if [ $( command -v stack > /dev/null ) ]; then
  eval "$(stack --bash-completion-script stack)"
fi
