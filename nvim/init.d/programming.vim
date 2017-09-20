" PROGRAMMING:
" This was mostly about python, which now uses pymode
" Might have to use other settings for other languages
" Indentation and tabs -- putting back for stuff like this file
  function MyVimrc_setup_prog(indent)
    hi link LongLines SpellLocal
    match LongLines '\%>79v.\+' 
    set number
    set nowrap
    let &tabstop=a:indent
    let &shiftwidth=a:indent
    inoremap <C-u> _
  endfunction

" Strip trailing white space, keeping cursor positoin
  function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endfun

" Defult
  set autoindent
  set expandtab
  set smarttab
  set tabstop=2
  set shiftwidth=2

" Vim
  autocmd BufEnter * if &ft ==# 'vim' | call MyVimrc_setup_prog(2) | endif

" Python
  autocmd BufEnter * if &ft ==# 'python' | call MyVimrc_setup_prog(4) | endif
  autocmd BufWritePre *.py :call <SID>StripTrailingWhitespaces()

" Javascript
  autocmd BufEnter * if &ft ==# 'javascript' | call MyVimrc_setup_prog(2) | endif

" CSS/SCSS
  autocmd BufEnter * if &ft ==# 'scss' | call MyVimrc_setup_prog(4) | endif
  autocmd BufEnter * if &ft ==# 'css' | call MyVimrc_setup_prog(4) | endif

" Php
  autocmd BufEnter * if &ft ==# 'php' | call MyVimrc_setup_prog(2) | endif

" Html and django templates
  autocmd BufEnter * if &ft ==# 'html' || &ft ==# 'htmldjango' | 
        \ inoremap <buffer> << </<c-x><c-o>

" Make
  autocmd FileType make setlocal noexpandtab

" Elixir
  autocmd BufEnter * if &ft ==# 'elixir' | set number | endif
  autocmd BufEnter * if &ft ==# 'elixir' | set nowrap | endif

" Elm (shoudl this be here or in my bitterjug-settings?)
  autocmd BufEnter * if &ft ==# 'elm' | call MyVimrc_setup_prog(4) | endif
