" PROGRAMMING:
" This was mostly about python, which now uses pymode
" Might have to use other settings for other languages
" Indentation and tabs -- putting back for stuff like this file
  function MyVimrc_setup_prog(indent)
    hi link LongLines SpellLocal
    match LongLines '\%>79v.\+' 
    set number
    let &tabstop=a:indent
    let &shiftwidth=a:indent
    inoremap <C-u> _
  endfunction

" Defult
  set autoindent
  set expandtab
  set smarttab
  set tabstop=2
  set shiftwidth=2

" Vim
  autocmd BufEnter * if &ft ==# 'vim' | call MyVimrc_setup_prog(2) | endif

" Python
  let g:pymode_rope_complete_on_dot = 0
  autocmd BufEnter * if &ft ==# 'python' | call MyVimrc_setup_prog(4) | endif

" Javascript
  autocmd BufEnter * if &ft ==# 'javascript' | call MyVimrc_setup_prog(2) | endif

" Elm
  autocmd BufEnter * if &ft ==# 'elm' | call MyVimrc_setup_prog(2) | endif
  " autocmd FileType elm nmap <leader>m <Plug>(elm-make)
  " autocmd FileType elm nmap <leader>d <Plug>(elm-error-detail)
  let g:elm_format_autosave = 1

