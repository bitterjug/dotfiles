" NeoBundle boot
    filetype off
    let iCanHazNeoBundle=1
    let nb_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
    if !filereadable(nb_readme)
        echo "Installing NeoBundle..."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
        let iCanHazNeoBundle=0
    endif

    if has('vim_starting')
        set nocompatible               " Be iMproved
        set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif

    call neobundle#rc(expand('~/.vim/bundle/'))
    " Let NeoBundle manage NeoBundle
    NeoBundleFetch 'Shougo/neobundle.vim'

    NeoBundle 'bitterjug/vim-colors-freyr'
    NeoBundle "Shougo/neocomplete.vim"
    NeoBundle 'open-browser.vim'
    NeoBundle 'UltiSnips'
    NeoBundle 'Syntastic'
    NeoBundle 'Lokaltog/vim-powerline'
    NeoBundle 'vcscommand.vim'
    NeoBundle 'svncommand.vim'
    NeoBundle 'vcsbzr.vim'
    NeoBundle 'tpope/vim-ragtag'
    NeoBundle 'surround.vim'
    NeoBundle 'SuperTab-continued.'
    NeoBundle 'Textile-for-VIM'
    NeoBundle 'Markdown'
    NeoBundle 'ctrlp.vim'
    NeoBundle 'klen/python-mode'
    NeoBundle 'vim-json-bundle'
    NeoBundle 'matchit.zip'
    NeoBundle 'MatchTag'
    NeoBundle 'bitterjug/vim-colors-freyr'
    NeoBundle 'bitterjug/vim-colors-bitterjug'
    NeoBundle 'digitaltoad/vim-jade'
    NeoBundle 'vim-coffee-script'
    NeoBundle 'lbdbq'
    NeoBundle 'gerw/vim-HiLinkTrace'
    NeoBundle 'Mark'
    NeoBundle 'airblade/vim-gitgutter'
    NeoBundle 'unimpaired.vim'
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'VOoM'
    NeoBundle 'jceb/vim-orgmode'
    NeoBundle 'rking/ag.vim'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle "Shougo/neocomplete.vim"
    NeoBundle "Shougo/unite.vim"

    " Rcommended to install
    NeoBundle 'Shougo/vimproc', {
     \ 'build' : {
     \     'windows' : 'make -f make_mingw32.mak',
     \     'cygwin' : 'make -f make_cygwin.mak',
     \     'mac' : 'make -f make_mac.mak',
     \     'unix' : 'make -f make_unix.mak',
     \    },
     \ }

    " My Bundles here:
    " Refer to |:NeoBundle-examples|.
    "
    " Note: You don't set neobundle setting in .gvimrc!


    filetype plugin indent on     " Required!
    "
    " Brief help
    " :NeoBundleList          - list configured bundles
    " :NeoBundleInstall(!)    - install(update) bundles
    " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

    " Installation check.
        NeoBundleCheck

    if iCanHazNeoBundle == 0
        echo "Installing Bundles..."
        echo ""
        NeoBundleInstall
    endif

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


"
"   "...
"   "
"    if iCanHazVundle == 0
"        echo "Installing Bundles..."
"        echo ""
"        :BundleInstall
"    endif
"" File type detection and indentation on, this needs to be after Vundle is
"" setup
"    filetype plugin indent on

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

" Neocomplete
    " Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    " let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    " Define dictionary.
    "let g:neocomplete#sources#dictionary#dictionaries = {
    "    \ 'default' : '',
    "    \ 'vimshell' : $HOME.'/.vimshell_hist',
    "    \ 'scheme' : $HOME.'/.gosh_completions'
    "        \ }

    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " Plugin key-mappings.
    inoremap <expr><C-g>     neocomplete#undo_completion()
    inoremap <expr><C-l>     neocomplete#complete_common_string()

    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " <C-h>, <BS>: close popup and delete backword char.j
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y>  neocomplete#close_popup()
    inoremap <expr><C-e>  neocomplete#cancel_popup()
    " Close popup by <Space>.
    "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

    " For cursor moving in insert mode(Not recommended)
    "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
    "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
    "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
    "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
    " Or set this.
    "let g:neocomplete#enable_cursor_hold_i = 1
    " Or set this.
    "let g:neocomplete#enable_insert_char_pre = 1

    " AutoComplPop like behavior.
    "let g:neocomplete#enable_auto_select = 1

    " Shell like behavior(not recommended).
    "set completeopt+=longest
    "let g:neocomplete#enable_auto_select = 1
    "let g:neocomplete#disable_auto_complete = 1
    "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
    endif
    "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

    " For perlomni.vim setting.
    " https://github.com/c9s/perlomni.vim
    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
