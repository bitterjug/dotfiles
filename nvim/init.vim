" Vim Plug - load plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'

" Editing:
  Plug 'vim-scripts/surround.vim'
  Plug 'ervandew/supertab'
  " Plug 'neitanod/vim-clevertab'

  " Required for NCM2
  " Plug 'roxma/nvim-yarp'
  " Plug 'ncm2/ncm2'

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

" Filetyles:
" Plug 'tpope/vim-markdown'
" Restructured text
  Plug 'Rykka/riv.vim', { 'for': 'rst' }
"  Plug 'suan/vim-instant-markdown' -- doesn't work

" Nerdtree:
  Plug 'scrooloose/nerdtree'
  Plug 'vim-scripts/vim-nerdtree_plugin_open'
  Plug 'eugen0329/vim-esearch' " In place of vim-ack and nerdtree-ack
" Tmxu navigator has to come after NERDTree to override navigation
  Plug 'bitterjug/vim-tmux-navigator'

" Search:
"  Plug 'wincent/ferret' -- seems to add not much more than esearch
  Plug 'yssl/QFEnter' " make it easier to use quickfix
  Plug 'tpope/vim-unimpaired'

" Programming:
  Plug 'majutsushi/tagbar'
" Plug 'bitterjug/vim-easytags'
  Plug 'w0rp/ale'
  Plug 'maximbaz/lightline-ale'
  Plug 'thirtythreeforty/lessspace.vim'
  Plug 'Rykka/colorv.vim', { 'for': 'vim' }
  Plug 'jeetsukumaran/vim-indentwise'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'pseewald/vim-anyfold'
  Plug 'scrooloose/nerdcommenter'
  Plug 'terryma/vim-expand-region'

" Haskell:
"  Plug 'bitc/vim-hdevtools' -- relies on ghc-mod :(
"  Plug 'parsonsmatt/intero-neovim' -- cool, uses the repl
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }

" Rest and Json:
  Plug 'elzr/vim-json'
  Plug 'diepm/vim-rest-console', { 'for': 'rest' }

" Javascript:
  "Plug 'jelera/vim-javascript-syntax'
  Plug 'pangloss/vim-javascript'

" Purescript:
  Plug 'purescript-contrib/purescript-vim'
  Plug 'FrigoEU/psc-ide-vim'
  Plug 'vim-syntastic/syntastic', { 'for': 'purescript' }

" Elm:
  Plug 'elmcast/elm-vim'
  Plug '~/workspace/vim-tagbar-ctags-elm'
  Plug 'tweekmonster/braceless.vim', { 'for': 'elm' }

" Python:
  Plug 'davidhalter/jedi-vim', { 'for': 'py' }

" Elixir:
  Plug 'elixir-lang/vim-elixir'
  Plug 'thinca/vim-ref', { 'for': 'elixir' }
  Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
" disabled because of problems editing my test files
"  Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

" Docker:
  Plug 'ekalinin/Dockerfile.vim'

" Notes:
"  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
  Plug 'vimwiki/vimwiki'
  Plug 'alok/notational-fzf-vim'
  Plug 'dbeniamine/todo.txt-vim'

" Colorschemes:
  Plug 'bitterjug/vim-colors-bitterjug'
"  Plug '~/workspace/vim-colors-bitterjug'
  Plug 'bitterjug/vim-colors-freyr'
  Plug 'chriskempson/base16-vim'
  Plug 'jnurmine/Zenburn'
  Plug 'morhetz/gruvbox'
  Plug 'mhinz/vim-janah'

" Tools:
  Plug 'jlanzarotta/bufexplorer'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fzf
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
  Plug 'junegunn/fzf.vim'
  Plug 'tweekmonster/fzf-filemru'

" Git:
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'gregsexton/gitv'
  Plug 'airblade/vim-gitgutter'
  Plug 'idanarye/vim-merginal'
  Plug 'rhysd/conflict-marker.vim'
  Plug 'whiteinge/diffconflicts'

" Highlighting (load last to override earlier settings):
  Plug 'gerw/vim-HiLinkTrace'
"  Plug 't9md/vim-quickhl' - disabled to investigate  'inkarkat/vim-mark'
  Plug 'inkarkat/vim-ingo-library'
  Plug 'inkarkat/vim-mark'

" Requires ingo-library
"  Plug 'inkarkat/vim-SearchHighlighting' -- disabled to investigate  'inkarkat/vim-mark'

"  Plug 'jaxbot/semantic-highlight.vim'
call plug#end()

runtime! init.d/*.vim

