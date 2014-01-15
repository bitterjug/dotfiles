
" Try and unify the clipboards (not sure if working)
    set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux

" Remove commas from keyword detection
    set iskeyword-=(,)

" Wildcard completion in status bar
    set wildmode=list:longest

" No blinking cursor
    set gcr=a:blinkon0

" Dont let cursor go near the top of botom
    set scrolloff=10

" This was mostly about python, which now uses pymode
" Might have to use other settings for other languages
" Indentation and tabs -- putting back for stuff like this file
    function MyVimrc_setup_python()
        match SpellLocal '\%>79v.\+' 
    endfunction
    autocmd BufEnter * if &ft ==# 'python' | call MyVimrc_setup_python() | endif
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

" ctrl--h and ctrl--l move among tabs
    noremap <C-h> gT
    noremap <C-l> gt

" Q reformats paragraph (maybe should be specific to text formats?)
    map Q gwap
    vmap Q gqap

" format lists
    set formatoptions+=n

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
    Bundle 'open-browser.vim'
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
    Bundle 'klen/python-mode'
    Bundle 'vim-json-bundle'
    Bundle 'matchit.zip'
    Bundle 'MatchTag'
    Bundle 'bitterjug/vim-colors-freyr'
    Bundle 'bitterjug/vim-colors-bitterjug'
    Bundle 'digitaltoad/vim-jade'
    Bundle 'vim-coffee-script'
    Bundle 'lbdbq'
    Bundle 'gerw/vim-HiLinkTrace'
    Bundle 'Mark'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'unimpaired.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'tpope/vim-fugitive'
    Bundle 'VOoM'
    Bundle 'jceb/vim-orgmode'
    Bundle 'rking/ag.vim'

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
    let g:ctrlp_extensions = ['quickfix', 'mixed']
    " Excluded file types
    set wildignore+=*/.hg/*,*/.svn/*,*.pyc

" UltiSnips
    let g:UltiSnipsSnippetsDir='~/Ubuntu\ One/vim/UltiSnips'
    let g:UltiSnipsEditSplit="horizontal"

" Rope
    " Go to definition in a new buffer: horizontal split 
    let g:pymode_rope_goto_def_newwin='new'

" Pymode:Lint
    let g:pymode_lint_ignore="E126,E128,E501"

" mail
    autocmd BufEnter * if &ft ==# 'mail' | call MyVimrc_setup_mail() | endif
    function MyVimrc_setup_mail()
        set dictionary=/usr/share/dict/words
        setlocal spell 
        set number
        set complete+=k 
        " dlbdbq bindings
        " map these to control-t like in Mutt
        nnoremap <silent> <C-t> :call LbdbExpandCurLine()<RETURN>
        inoremap <silent> <C-t> <ESC>:call LbdbExpandCurLine()<RETURN>A
    endfunction

" new windows
    set switchbuf=useopen,usetab

" TagBar
    command! TT TagbarToggle
    command! OO TagbarOpenAutoClose
    nmap <Leader>o :TagbarOpenAutoClose<enter>
    " I prefer tags in file order, unless I sort them
    let g:tagbar_sort = 0

" Voom
    let g:voom_ft_modes = {'markdown': 'markdown', 'rst': 'rest', 'org': 'org'}
    nmap <Leader>v :VoomToggle<enter>

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

" Ag the silver searcher
    let g:aghighlight=1
