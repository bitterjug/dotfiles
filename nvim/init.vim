" Vim Plug - load plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'bitterjug/vim-tmux-navigator'
" Editing:
  Plug 'surround.vim'
  Plug 'ervandew/supertab'
" Filetyles:
  Plug 'jtratner/vim-flavored-markdown'
" Restructured text
  Plug 'Rykka/riv.vim', { 'for': 'rst' }
" Nerdtree:
  Plug 'scrooloose/nerdtree'
  Plug 'eugen0329/vim-esearch' " In place of vim-ack and nerdtree-ack
" Git:
  Plug 'tpope/vim-fugitive'
  Plug 'gregsexton/gitv'
" Plug 'Shougo/deoplete.nvim'
" Programming:
  Plug 'benekastah/neomake'
  Plug 'majutsushi/tagbar'
" Elm:
  Plug 'elmcast/elm-vim'
"  Plug 'bitterjug/elm-vim'
"  Plug 'vim-syntastic/syntastic', { 'for': 'elm' }
"  Plug 'vim-syntastic/syntastic'
"  Plug 'w0rp/ale'
" Python:
  Plug 'davidhalter/jedi-vim'
" Notes:
  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
" Colorschemes:
  Plug 'bitterjug/vim-colors-bitterjug'
  Plug 'bitterjug/vim-colors-freyr'
  Plug 'chriskempson/base16-vim'
  Plug 'jnurmine/Zenburn'
  Plug 'morhetz/gruvbox'
  Plug 'mhinz/vim-janah'
"  Highlight tool
  Plug 'gerw/vim-HiLinkTrace'
" Tools:
  Plug 'jlanzarotta/bufexplorer'
  Plug 'vim-scripts/Mark'
  Plug '~/workspace/vim-tagbar-ctags-elm'
  Plug '~/workspace/vim-settings-bitterjug'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()


" I'm not ready to invest the energy into this yet
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
"Plug 'junegunn/fzf.vim'
"
" old Neo bundle list

"  NeoBundle "Shougo/neocomplete.vim"
"  " NeoBundle "Shougo/unite.vim"
"  " NeoBundle "Shougo/vimshell.vim"
"  " NeoBundle "Shougo/vimfiler.vim"
"  NeoBundle 'bitterjug/vim-notebook'
"  NeoBundle 'jnurmine/Zenburn'
"  NeoBundle 'open-browser.vim'
"  NeoBundle 'UltiSnips'
"  NeoBundle 'Syntastic'
"  " NeoBundle 'Lokaltog/powerline', { 'rtp': 'powerline/bindings/vim/' }
"  NeoBundle 'edkolev/tmuxline.vim'
"  " NeoBundle 'vcscommand.vim'
"  " NeoBundle 'svncommand.vim'
"  " NeoBundle 'vcsbzr.vim'
"  NeoBundle 'tpope/vim-ragtag'
"  NeoBundle 'ap/vim-css-color'
"  NeoBundle 'Textile-for-VIM'
"  " NeoBundle 'tpope/vim-markdown'
"  NeoBundle 'jtratner/vim-flavored-markdown'
"  " NeoBundle 'ctrlp.vim'
"  NeoBundle 'klen/python-mode'
"  " NeoBundle 'davidhalter/jedi-vim'
"  NeoBundle 'vim-json-bundle'
"  NeoBundle 'matchit.zip'
"  NeoBundle 'MatchTag'
"  " NeoBundle 'digitaltoad/vim-jade'
"  " NeoBundle 'vim-coffee-script'
"  " NeoBundle 'lbdbq'
"  NeoBundle 'Mark'
"  NeoBundle 'airblade/vim-gitgutter'
"  NeoBundle 'unimpaired.vim'
"  NeoBundle 'chrisbra/vim-diff-enhanced'
"  NeoBundle 'VOoM'
"  NeoBundle 'rking/ag.vim'
"  " NeoBundle 'mustache/vim-mustache-handlebars'
"  NeoBundle 'groenewege/vim-less'
"  " NeoBundle 'shime/vim-livedown'
"  NeoBundle 'reedes/vim-pencil'
"  NeoBundle 'reedes/vim-wordy'
"  " NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"
"   " org mode and related
"  " NeoBundle 'hsitz/VimOrganizer' " org mode
"  " NeoBundle 'chrisbra/NrrwRgn'   " narrowing
"  " NeoBundle 'vim-scripts/utl.vim'
"  " NeoBundle 'mattn/calendar-vim'
"
"   " redmine wiki 
"  NeoBundle 's3rvac/vim-syntax-redminewiki'
"  NeoBundle 'will133/vim-dirdiff'
"
"  NeoBundle 'tpope/vim-cucumber'
"  call neobundle#end()
"
"  " My Bundles here:
"  " Refer to |:NeoBundle-examples|.
"  "
"  " Note: You don't set neobundle setting in .gvimrc!
"
"
"  filetype plugin indent on     " Required!
"  "
"  " Brief help
"  " :NeoBundleList          - list configured bundles
"  " :NeoBundleInstall(!)    - install(update) bundles
"  " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
"
"  if iCanHazNeoBundle == 0
"      echo "Installing Bundles..."
"      echo ""
"      NeoBundleCheck
"  endif
"

runtime! init.d/*.vim

"" Try and unify the clipboards (not sure if working)
"  set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux
"
"" Remove commas from keyword detection
"  set iskeyword-=(,)
"
"" Wildcard completion in status bar
"  set wildmode=list:longest
"
"" No blinking cursor
"  set gcr=a:blinkon0
"
"" Dont let cursor go near the top of botom
"
"
"" Long lines
"  set nowrap
"
"
"" folding, off by default
"  set nofoldenable
"
"" .==============MAPPINGS==========.
"
"" ctrl--h and ctrl--l move among windows
"  nnoremap <C-J> <C-W>j
"  nnoremap <C-K> <C-W>k
"  nnoremap <C-H> <C-W>h
"  nnoremap <C-L> <C-W>l
"
"" kj mash
"  inoremap kj <esc>
"
""mouse
"  set mouse=a


"" `=============/MAPPINGS=========='
"

" colours (do this after installing freyr bundle
"  set t_Co=256
"  " while developing jitterbug
"  colorscheme jitterbug

"" xml.vim 
"  let xml_use_xhtml = 1
"
"" Ctrl-P
""    " Extensions
""    let g:ctrlp_extensions = ['quickfix', 'mixed']
""    " Excluded file types
""    set wildignore+=*/.hg/*,*/.svn/*,*.pyc
"
"" UltiSnips
"  let g:UltiSnipsSnippetsDir='~/Ubuntu\ One/vim/UltiSnips'
"  let g:UltiSnipsEditSplit="horizontal"
"
"" Rope
"  " Go to definition in a new buffer: horizontal split 
"  let g:pymode_rope_goto_def_newwin='new'
"
"" Pymode:Lint
"  let g:pymode_lint_ignore="E126,E128,E501"
"
"" mail
"  autocmd BufEnter * if &ft ==# 'mail' | call MyVimrc_setup_mail() | endif
"  function MyVimrc_setup_mail()
"      set dictionary=/usr/share/dict/words
"      setlocal spell 
"      set number
"      set complete+=k 
"      " dlbdbq bindings
"      " map these to control-t like in Mutt
"      nnoremap <silent> <C-t> :call LbdbExpandCurLine()<RETURN>
"      inoremap <silent> <C-t> <ESC>:call LbdbExpandCurLine()<RETURN>A
"  endfunction
"

"" Voom
"  let g:voom_ft_modes = {'markdown': 'markdown', 'ghmarkdown': 'markdown', 'rst': 'rest', 'org': 'org'}
"  nmap <Leader>v :VoomToggle<enter>
"

"" Open Browser
"  "   Search with DuckDuckGo
"  let g:openbrowser_default_search="duckduckgo"
"	" If it looks like URI, Open URI under cursor.
"	" Otherwise, Search word under cursor.
"	nmap <Leader>b <Plug>(openbrowser-smart-search)
"	" If it looks like URI, Open selected URI.
"	" Otherwise, Search selected word.
"	vmap <Leader>b <Plug>(openbrowser-smart-search)
"
" Ag the silver searcher
"  let g:aghighlight=1

"" Neocomplete
"  " Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"  " Disable AutoComplPop.
"  let g:acp_enableAtStartup = 0
"  " Use neocomplete.
"  let g:neocomplete#enable_at_startup = 0
"  " Use smartcase.
"  let g:neocomplete#enable_smart_case = 1
"  " Set minimum syntax keyword length.
"  let g:neocomplete#sources#syntax#min_keyword_length = 3
"  " let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"  " Define dictionary.
"  "let g:neocomplete#sources#dictionary#dictionaries = {
"  "    \ 'default' : '',
"  "    \ 'vimshell' : $HOME.'/.vimshell_hist',
"  "    \ 'scheme' : $HOME.'/.gosh_completions'
"  "        \ }
"
"  " Define keyword.
"  if !exists('g:neocomplete#keyword_patterns')
"      let g:neocomplete#keyword_patterns = {}
"  endif
"  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"  " Plugin key-mappings.
"  inoremap <expr><C-g>     neocomplete#undo_completion()
"  inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"  " Recommended key-mappings.
"  " <CR>: close popup and save indent.
"  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"  function! s:my_cr_function()
"  return neocomplete#close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"  endfunction
"  " <TAB>: completion.
"  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"  " <C-h>, <BS>: close popup and delete backword char.j
"  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"  inoremap <expr><C-y>  neocomplete#close_popup()
"  inoremap <expr><C-e>  neocomplete#cancel_popup()
"  " Close popup by <Space>.
"  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
"  " For cursor moving in insert mode(Not recommended)
"  "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"  "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"  "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"  " Or set this.
"  "let g:neocomplete#enable_cursor_hold_i = 1
"  " Or set this.
"  "let g:neocomplete#enable_insert_char_pre = 1
"
"  " AutoComplPop like behavior.
"  "let g:neocomplete#enable_auto_select = 1
"
"  " Shell like behavior(not recommended).
"  "set completeopt+=longest
"  "let g:neocomplete#enable_auto_select = 1
"  "let g:neocomplete#disable_auto_complete = 1
"  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"  
"  " Enable omni completion.
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"  " Enable heavy omni completion.
"  if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"  endif
"  "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"  "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"  "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"  " For perlomni.vim setting.
"  " https://github.com/c9s/perlomni.vim
"  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"
"" Unite
"" Working highlight fix (move to colorscheme)
"" By default this maps to "special"
""  hi uniteCandidateSourceName ctermfg=241
"" Unite-binding ctrl-p like:
""	call unite#filters#matcher_default#use(['matcher_fuzzy'])
""	nnoremap <C-p> :<C-u>Unite buffer file_rec<CR>
"" Unite-grep
""	if executable('ag')
""	  " Use ag in unite grep source.
""	  let g:unite_source_grep_command = 'ag'
""    let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup --hidden --ignore ''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
"" 	  let g:unite_source_grep_recursive_opt = ''
""	  let g:unite_source_grep_default_opts =
""	  \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
""	  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
""	elseif executable('ack-grep')
""	  " Use ack in unite grep source.
""	  let g:unite_source_grep_command = 'ack-grep'
""	  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
""	  let g:unite_source_grep_recursive_opt = ''
""	endif
"
"" VimShell
"  noremap ! :VimShellPop<cr>

"" VimFiler
""    noremap <Leader>f :VimFilerExplorer -toggle<cr>
""    "Open  if no file argumentsNERDTree
""    autocmd VimEnter * if !argc() | VimFiler | endif
""    " use inplace of netrw
""	let g:vimfiler_as_default_explorer = 1
""    " Ignore dotfiles and .pyc files.
""    let g:vimfiler_ignore_pattern = '^\%(\..*\|.*\.pyc\|.*\.pyo\|__pycache__\)$'
""	" Like Textmate icons.
""	let g:vimfiler_tree_leaf_icon = '╰─'
""	let g:vimfiler_tree_opened_icon = '─▾'
""	let g:vimfiler_tree_closed_icon = '─▷'
""	let g:vimfiler_file_icon = '─╴'
""
""    let g:vimfiler_readonly_file_icon ='─╸'
""	let g:vimfiler_marked_file_icon = ' ✔'
""    let g:vimfiler_tree_indentation = 3
""	" let g:vimfiler_tree_closed_icon = '▸'
""	"let g:vimfiler_file_icon = '╼'
"
"" Syntastic 
"  let g:syntastic_id_checkers=1
"  let g:syntastic_error_symbol='✗'
"  let g:syntastic_warning_symbol='⚠'
"  let g:syntastic_enable_highlighting = 1
"  let g:syntastic_loc_list_height=5
"  let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['python'] }
"
""   Javascript
"  let g:syntastic_javascript_checkers = ['jshint']
"

"" VimOrganizer
"  let g:ft_ignore_pat = '\.org'
"  filetype plugin indent on
"  " and then put these lines in vimrc somewhere after the line above
"  au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
"  au BufEnter *.org            call org#SetOrgFileType()
"
"" Riv Restructured Text Devjournal
"  let riv_home = { 'Name': 'Home Dev Notes', 'path': '~/SparkleShare/devjournal/home/rst', }
"  let riv_work = { 'Name': 'Work Dev Notes', 'path': '~/SparkleShare/devjournal/work/rst', }
"  let g:riv_projects= [riv_home, riv_work]
"  " Disable annoying folding
"  let g:riv_disable_folding = 1
"  hi link rstSections Title
"  hi link rstStrongEmphasis Title
"  hi link rstEmphasis Special
"  hi link rstFileLink Underlined
"  hi link rstDirective PreProc
"  hi link rstStrongEmphasisDelimiter LineNr


"" DirDiff
"  let g:DirDiffExcludes = ".git,.pyc,*.swp,CVS,*.class,*.exe,.*.swp"
"
"" Mouse
"  set mouse=a


"" Fix alt codes
"let c='a'
"while c <= 'z'
"  exec "set <A-".c.">=\e".c
"  exec "imap \e".c." <A-".c.">"
"  let c = nr2char(1+char2nr(c))
"endw
"
"set timeout ttimeoutlen=50

""" Deoplete
"  let g:deoplete#enable_at_startup = 1
"  " tab-complete
"  inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
"  " ,<Tab> for regular tab
"  inoremap <Leader><Tab> <Space><Space>

let g:SuperTabLongestEnhanced = 1
" let g:SuperTabLongestHighlight = 1
let g:SuperTabDefaultCompletionType="<c-n>"

