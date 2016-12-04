" Elm
  autocmd BufEnter * if &ft ==# 'elm' | call MyVimrc_setup_prog(4) | endif
  let g:elm_format_autosave = 1
  hi link elmTopLevelDecl Title
" Prevent elm-vim from blathering <leader>M for mark
  let g:elm_setup_keybindings = 0
  let g:elm_syntastic_show_warnings = 1
  au FileType elm nmap <c-e>m <Plug>(elm-make)
  au FileType elm nmap <c-e>d <Plug>(elm-error-detail)
  au FileType elm nmap <c-e>b <Plug>(elm-browse-docs)
  au FileType elm nmap <c-e>s <Plug>(elm-show-docs)
