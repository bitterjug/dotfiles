
set updatetime=100

" Bindings
  nmap [c <Plug>(GitGutterPrevHunk)
  nmap ]c <Plug>(GitGutterNextHunk)

" let g:gitgutter_sign_added              = '┃'
  let g:gitgutter_sign_added              = '│'

" let g:gitgutter_sign_modified           = '┃'
  let g:gitgutter_sign_modified           = '│'

"let g:gitgutter_sign_removed            = '▁▁'
"let g:gitgutter_sign_removed_first_line = '▔▔'

  let g:gitgutter_sign_modified_removed   = '│▁'
"let g:gitgutter_sign_modified_removed  = '│_'
  let g:gitgutter_sign_removed            = '▁'

" Update on buff enter
  let g:gitgutter_terminal_reports_focus = 0

" ignore whitespace in diffsd
  let g:gitgutter_diff_args = '-w'
