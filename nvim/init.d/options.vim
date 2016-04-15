" Don't scroll near the end of the page
set scrolloff=10

" Use proper vertical bar for vertsplit 
  set fillchars=vert:\│

" Make stuff easier to type
  command WQ wq
  command Wq wq
  command W w
  command Q q

" Move among tabs
" the nvim way:
  noremap <M-h> gT
  noremap <M-l> gt

" Q reformats paragraph (maybe should be specific to text formats?)
  map Q gwap
  vmap Q gqap

" format lists
  set formatoptions+=n

" spell check docs 
  autocmd BufEnter * if &ft ==# 'rst' | setlocal spell | endif
  autocmd BufEnter * if &ft ==# 'markdown' | setlocal spell | endif

" new windows
  set switchbuf=useopen,usetab

"List mode characters
  set listchars=eol:¬,tab:▸·,trail:•

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

" Vim
  autocmd BufEnter * if &ft ==# 'vim' | call MyVimrc_setup_prog(2) | endif

" Python
  let g:pymode_rope_complete_on_dot = 0
  autocmd BufEnter * if &ft ==# 'python' | call MyVimrc_setup_prog(4) | endif

" Javascript
  autocmd BufEnter * if &ft ==# 'javascript' | call MyVimrc_setup_prog(2) | endif

" Elm
  autocmd BufEnter * if &ft ==# 'elm' | call MyVimrc_setup_prog(2) | endif
  autocmd FileType elm nmap <leader>e <Plug>(elm-make)
  autocmd FileType elm nmap <leader>d <Plug>(elm-error-detail)
  let g:elm_format_autosave = 1

" Gitv
  let g:Gitv_OpenHorizontal = 'auto'

" Diff options
  set diffopt=filler,iwhite,vertical
