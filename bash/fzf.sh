# Make sure vi mode ix called before we set up bindings

set -o vi
# Try and load fzf bindings if present
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Use ag -g "" to find files so that we ignore stuff in .gitignore
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Display in tmux window if possible
export FZF_TMUX=1
