# Open vim from bash on control key

nvim=/snap/bin/nvim

# Control n opens nerdtree
bind '"\C-n":" $nvim -c NERDTree \C-m"'

# Control p opens fzf
bind '"\C-p":" $nvim -c ProjectMru \C-m"'

# Use neo vim as vi
alias vi='NVIM_TUI_ENABLE_TRUE_COLOR=1 $nvim'

