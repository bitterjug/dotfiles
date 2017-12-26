# Bash aliases for working in tmux windows
# mark the previous pane
function hide () {
  tmux select-pane -l \; select-pane -m
  $* &&  tmux select-pane -t~ \; resize-pane -Z \; select-pane -M
}
