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
  " Plug 'ervandew/supertab'
  Plug 'neitanod/vim-clevertab'
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


" Programming:
"  Plug 'benekastah/neomake'
  Plug 'majutsushi/tagbar'
  Plug 'bitterjug/vim-easytags'
  Plug 'w0rp/ale'
  Plug 'thirtythreeforty/lessspace.vim'
  Plug 'Rykka/colorv.vim', { 'for': 'vim' }
  Plug 'jeetsukumaran/vim-indentwise'
  Plug 'scrooloose/nerdcommenter'

" Rest and Json:
  Plug 'elzr/vim-json'
  Plug 'diepm/vim-rest-console', { 'for': 'rest' }

" Javascript:
  Plug 'jelera/vim-javascript-syntax'

" Purescript:
  Plug 'purescript-contrib/purescript-vim'
  Plug 'FrigoEU/psc-ide-vim'
  Plug 'vim-syntastic/syntastic', { 'for': 'purescript' }
 
" Elm:
  Plug 'elmcast/elm-vim'
  Plug '~/workspace/vim-tagbar-ctags-elm'

" Python:
  Plug 'davidhalter/jedi-vim'

" Elixir:
  Plug 'elixir-lang/vim-elixir'
  Plug 'thinca/vim-ref'
  Plug 'slashmili/alchemist.vim'
" disabled because of problems editing my test files
"  Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

" Docker:
  Plug 'ekalinin/Dockerfile.vim'

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

" Tools:
  Plug 'jlanzarotta/bufexplorer'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
  Plug 'junegunn/fzf.vim'

" Git:
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'gregsexton/gitv'
  Plug 'airblade/vim-gitgutter'
  Plug 'idanarye/vim-merginal'
  Plug 'rhysd/conflict-marker.vim'

" Highlighting (load last to override earlier settings):
  Plug 'gerw/vim-HiLinkTrace'
  Plug 'dominikduda/vim_current_word'
  Plug 'vim-scripts/Mark'


  Plug 'jaxbot/semantic-highlight.vim'
call plug#end()

runtime! init.d/*.vim

