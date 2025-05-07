# Open vim from bash on control key

nvim=/snap/bin/nvim

# Control n opens nerdtree
bind '"\C-n":" $nvim -c Neotree \C-m"'

# Control p opens fzf
bind '"\C-p":" $nvim -c Telescope find_files"'

# Use neo vim as vi
alias vi='nvim'
