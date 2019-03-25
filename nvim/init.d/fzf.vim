" Make FZF's Files comand work like ctrl-p
"  noremap <c-p> :GFiles<cr>
  nnoremap <c-p> :ProjectMru --tiebreak=index<cr>
  noremap <c-b> :Buffers<cr>
  noremap <Leader>p :History<cr>

" leader-t list tags starting with word under cursor
  noremap <Leader>t :Tags <C-r><C-w><cr>

" FZF use existing buffer
  let g:fzf_buffers_jump = 1


" [[B]Commits] Customize the options used by 'git log': show commit author 
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %C(blue)%cn %C(reset)%s %C(black)%C(bold)%cr"'



" Update MRU on buffer write, so most recently changed files ar last in MRU
  let g:fzf_filemru_bufwrite = 1

" Complete lines
" imap <c-x><c-l> <plug>(fzf-complete-line)

" Global line completion (not just open buffers. ripgrep required.)
inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
  \ 'prefix': '^.*$',
  \ 'source': 'rg -n ^ --color always',
  \ 'options': '--ansi --delimiter : --nth 3..',
  \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}
  \))
