" Make FZF's Files comand work like ctrl-p
  noremap <c-p> :GFiles<cr>
  noremap <c-b> :Buffers<cr>

" FZF use existing buffer
  let g:fzf_buffers_jump = 1


" [[B]Commits] Customize the options used by 'git log': show commit author 
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %C(blue)%cn %C(reset)%s %C(black)%C(bold)%cr"'
