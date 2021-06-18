# Open vim from bash on control key


# Control n opens nerdtree
bind '"\C-n":" nvim -c \"CocCommand explorer --position floating\" \C-m"'

# Control p opens fzf
bind '"\C-p":" nvim -c ProjectMru \C-m"'

# Use neo vim as vi
alias vi=nvim

