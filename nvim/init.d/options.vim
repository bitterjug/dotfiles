"mouse
  set mouse=a

" default colorscheme base16-ashes
  set background=dark
  colorscheme jitterbug

" Make stuff look smoother (recommended by gitv docs)
  set lazyredraw

" Don't scroll near the end of the page
  set scrolloff=10

" Use proper vertical bar for vertsplit 
"  set fillchars=vert:\│
  set fillchars=vert:┃

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
  autocmd BufEnter * if &ft ==# 'markdown' | setlocal spell | endif

" new windows
  set switchbuf=useopen,usetab

"List mode characters
  set listchars=eol:¬,tab:▸·,trail:•

" Restructured text
  autocmd BufEnter * if &ft ==# 'rst' | 
    \ call MyVimrc_setup_prog(2) | 
    \ setlocal spell | endif

" Gitv
  let g:Gitv_OpenHorizontal = 'auto'

" Diff options
  set diffopt=filler,iwhite,vertical

" Make it easier for me to get out
  command Qa qa
  command QA qa

" 
  set switchbuf=useopen,usetab,split

" cmpleteopt 
set completeopt=preview,menuone,longest
