" Disable tmux navigator when zooming the Vim pane
  let g:tmux_navigator_disable_when_zoomed = 1

inoremap <silent> <c-h> <c-o>:TmuxNavigateLeft<cr>
inoremap <silent> <c-j> <c-o>:TmuxNavigateDown<cr>
inoremap <silent> <c-k> <c-o>:TmuxNavigateUp<cr>
inoremap <silent> <c-l> <c-o>:TmuxNavigateRight<cr>

