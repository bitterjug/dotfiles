# Make sure vi mode ix called before we set up bindings

set -o vi
# Try and load fzf bindings if present
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_TMUX=1
