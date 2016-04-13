" Vim Plug - load plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'vsushkov/nerdtree-ack'
Plug 'surround.vim'
Plug 'itchyny/lightline.vim'
Plug 'bitterjug/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'Shougo/deoplete.nvim'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'bitterjug/vim-colors-bitterjug'
Plug 'bitterjug/vim-colors-freyr'
" I'm not ready to invest the energy into this yet
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
"Plug 'junegunn/fzf.vim'
call plug#end()

" Fzf clashes with my ^HJKL bindings 
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
"  NeoBundle 'ervandew/supertab'
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
"  NeoBundle 'gerw/vim-HiLinkTrace'
"  NeoBundle 'Mark'
"  NeoBundle 'airblade/vim-gitgutter'
"  NeoBundle 'unimpaired.vim'
"  NeoBundle 'majutsushi/tagbar'
"  NeoBundle 'chrisbra/vim-diff-enhanced'
"  NeoBundle 'VOoM'
"  NeoBundle 'rking/ag.vim'
"  NeoBundle 'mileszs/ack.vim'
"  " NeoBundle 'mustache/vim-mustache-handlebars'
"  NeoBundle 'groenewege/vim-less'
"  " NeoBundle 'shime/vim-livedown'
"  NeoBundle 'reedes/vim-pencil'
"  NeoBundle 'reedes/vim-wordy'
"  NeoBundle 'Rykka/riv.vim' "Restructured text
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
