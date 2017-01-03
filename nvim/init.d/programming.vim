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

" Javascript
  autocmd BufEnter * if &ft ==# 'javascript' | call MyVimrc_setup_prog(2) | endif

" CSS/SCSS
  autocmd BufEnter * if &ft ==# 'scss' | call MyVimrc_setup_prog(4) | endif
  autocmd BufEnter * if &ft ==# 'css' | call MyVimrc_setup_prog(4) | endif

" Php
  autocmd BufEnter * if &ft ==# 'php' | call MyVimrc_setup_prog(2) | endif
