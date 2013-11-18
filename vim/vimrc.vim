
" Try and unify the clipboards (not sure if working)
    set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux

" always see the tab-line
"     set showtabline=2

" Remove commas from keyword detection
    set iskeyword-=(,)

" Change directory to the curren file
"    set autochdir

" Wildcard completion in status bar
    set wildmode=list:longest

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
    " highlight long lines
    highlight LongLines gui=underline cterm=underline
    autocmd BufEnter * if &ft ==# 'python' | match LongLines '\%>79v.\+' | endif

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

" format lists
    set formatoptions+=n

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
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'vcscommand.vim'
    Bundle 'svncommand.vim'
    Bundle 'vcsbzr.vim'
    Bundle 'tpope/vim-ragtag'
    Bundle 'surround.vim'
    Bundle 'SuperTab-continued.'
    Bundle 'Textile-for-VIM'
    Bundle 'Markdown'
    Bundle 'ctrlp.vim'
    Bundle 'kakkyz81/evervim'
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
    Bundle 'Efficient-python-folding'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'unimpaired.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'tpope/vim-fugitive'
    Bundle 'ack.vim'
    Bundle 'open-browser.vim'

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
    " colorscheme jitterbug
" while developing jitterbug
colorscheme jitterbug

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
    set wildignore+=*/.hg/*,*/.svn/*,*.pyc
    " Don't manage working directory by default
    " let g:ctrlp_working_path_mode = 0

" UltiSnips
    " let g:UltiSnipsSnippetsDir='~/Ubuntu\ One/vim/UltiSnips'
    let g:UltiSnipsEditSplit="horizontal"

" Rope
    " Go to definition in a new buffer: horizontal split 
    let g:pymode_rope_goto_def_newwin='new'

" Pymode:Lint
    let g:pymode_lint_ignore="E126,E128,E501"

" mail
    set dictionary=/usr/share/dict/words
    autocmd BufEnter * if &ft ==# 'mail' | setlocal spell | endif
    autocmd BufEnter * if &ft ==# 'mail' | set number| endif
    autocmd BufEnter * if &ft ==# 'mail' | set complete+=k | endif
    " Default dlbdbq bindings
    nmap <silent> <LocalLeader>@ :call LbdbExpandCurLine()<RETURN>
    vmap <silent> <LocalLeader>@ :call LbdbExpandVisual()<RETURN>
    imap <silent> <LocalLeader>@ <ESC>:call LbdbExpandCurLine()<RETURN>A
    " Let's map these to control-t too, the same as in Mutt
    nmap <silent> <C-t> :call LbdbExpandCurLine()<RETURN>
    imap <silent> <C-t> <ESC>:call LbdbExpandCurLine()<RETURN>A

" new windows
    set switchbuf=useopen,split

" TagBar
    command! TT TagbarToggle
    command! OO TagbarOpenAutoClose
    nmap <Leader>o :TagbarOpenAutoClose<enter>

" Ack-grep
    " My ackrd hides .ve directories, this putts them back
    command! -nargs=* -complete=file Vack Ack --noignore-dir=.ve <args>

"List mode
    set listchars=eol:¬,tab:▸·,trail:•

" Evernote/Markdown
    autocmd BufEnter * if &ft ==# 'markdown' | setlocal spell | endif

" Open Browser
    "   Search with DuckDuckGo
    let g:openbrowser_default_search="duckduckgo"
	" If it looks like URI, Open URI under cursor.
	" Otherwise, Search word under cursor.
	nmap <Leader>b <Plug>(openbrowser-smart-search)
	" If it looks like URI, Open selected URI.
	" Otherwise, Search selected word.
	vmap <Leader>b <Plug>(openbrowser-smart-search)



" Stuff I dont want to put on git
source ~/Ubuntu\ One/vim/local.vim

