
" Try and unify the clipboards (not sure if working)
    set clipboard=unnamed,autoselect,exclude:cons\\\|linux

" always see the tab-line
"     set showtabline=2


" Remove commas from keyword detection
    set iskeyword-=(,)

" Change directory to the curren file
"    set autochdir

" Wildcard completion in status bar
    se wildmode=list:longest

" No blinking cursor
    set gcr=a:blinkon0

" Dont let cursor go near the top of botom
    set scrolloff=10

" This was mostly about python, which now uses pymode
" Might have to use other settings for other languages
" Indentation and tabs -- putting back for stuff like this file
    set autoindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set smarttab

" Long lines
    set nowrap

" Diff options
    set diffopt=filler,iwhite

" folding, off by default
    set nofoldenable

" NetRW
" Hide things from the file list
    let g:netrw_list_hide='.*\.pyc,.*\.swp'

" .==============MAPPINGS==========.
"
" Map control space for underline to save clawing
    imap <C-Space> _

" alt-h and alt-l move among tabs
    map è gT
    map ì gt

" Q reformats paragraph (maybe should be specific to text formats?)
    map Q gwap
    vmap Q gqap

"Shortcuts for moving among windows
    map <A-S-h> <C-w>h map <A-S-j> <C-w>j map <A-S-k> <C-w>k map <A-S-l> <C-w>l

" select all
    map <C-a> ggVG

" `=============/MAPPINGS=========='

" Vundle boot
    filetype off
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle..."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "add bundles
    Bundle 'UltiSnips'
    Bundle 'Syntastic'
    Bundle 'tpope/vim-fugitive'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'vcscommand.vim'
    Bundle 'svncommand.vim'
    Bundle 'vcsbzr.vim'
    Bundle 'tpope/vim-ragtag'
    Bundle 'surround.vim'
    Bundle 'SuperTab-continued.'
    Bundle 'ack.vim'
    Bundle 'Textile-for-VIM'
    Bundle 'Markdown'
    Bundle 'ctrlp.vim'
    Bundle 'klen/python-mode'
    Bundle 'vim-json-bundle'
    Bundle 'matchit.zip'
    Bundle 'MatchTag'
    Bundle 'bitterjug/vim-colors-freyr'
    Bundle 'bitterjug/vim-colors-bitterjug'
    " Bundle 'jade.vim'
    Bundle 'digitaltoad/vim-jade'
    Bundle 'DirDiff.vim'
    Bundle 'vim-coffee-script'
    Bundle 'lbdbq'
    Bundle 'gerw/vim-HiLinkTrace'
    Bundle 'Mark'
   "...
   "
    if iCanHazVundle == 0
        echo "Installing Bundles..."
        echo ""
        :BundleInstall
    endif
" File type detection and indentation on, this needs to be after Vundle is
" setup
    filetype plugin indent on

" colours (do this after installing freyr bundle
    set t_Co=256
    colorscheme bitterjug

" Powerline Status bar 
    set nocompatible   " Disable vi-compatibility
    set laststatus=2   " Always show the statusline
    set encoding=utf-8 " Necessary to show unicode glyphs
    let g:Powerline_symbols = 'fancy'

" compview Smart Search
    map <Leader>/ <Plug>CompView

" xml.vim 
    let xml_use_xhtml = 1

" Ctrl-P
    " Extensions
    " let g:ctrlp_extensions = ['dir', 'line']
    " Excluded file types
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc
    " Don't manage working directory by default
    let g:ctrlp_working_path_mode = 0

" UltiSnips
    let g:UltiSnipsSnippetsDir='~/Ubuntu\ One/vim/UltiSnips'
    let g:UltiSnipsEditSplit="horizontal"

" Rope
    " Go to definition in a new buffer: horizontal split 
    let g:pymode_rope_goto_def_newwin='new'

" Pymode:Lint
    let g:pymode_lint_ignore="E126,E128,E501"

" mail
    autocmd BufEnter * if &ft ==# 'mail' | setlocal spell | endif
    autocmd BufEnter * if &ft ==# 'mail' | set number| endif
    nmap <silent> <LocalLeader>@ :call LbdbExpandCurLine()<RETURN>
    vmap <silent> <LocalLeader>@ :call LbdbExpandVisual()<RETURN>
    imap <silent> <LocalLeader>@ <ESC>:call LbdbExpandCurLine()<RETURN>A
