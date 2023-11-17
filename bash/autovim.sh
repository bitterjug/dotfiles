# Open vim from bash on control key

nvim=nvim

# Control n opens nerdtree
bind '"\C-n":" $nvim -c NvimTreeToggle \C-m"'

# Control p opens fzf
bind '"\C-p":" $nvim -c '\''Telescope find_files'\'' \C-m"'

# Use neo vim as vi
alias vi='$nvim'

