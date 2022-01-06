  let g:FerretMap=0
" Vim Plug - load plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
  Plug 'junegunn/vim-peekaboo'
  Plug 'aklt/plantuml-syntax'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'brtastic/vim-jsonviewer'

  "Lightline
  Plug 'maximbaz/lightline-ale'
  Plug 'josa42/vim-lightline-coc'
  Plug 'itchyny/lightline.vim'

" Jq:
  Plug 'bfrg/vim-jq'

" Editing:
  Plug 'vim-scripts/surround.vim'
  " Plug 'ervandew/supertab'
  " Plug 'neitanod/vim-clevertab'

  " Required for NCM2
  " Plug 'roxma/nvim-yarp'
  " Plug 'ncm2/ncm2'

  " Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

" Show marks in sign column
  Plug 'kshenoy/vim-signature'

" Filetypes:
  Plug 'tpope/vim-markdown'
  Plug 'vim-voom/VOom'
" Restructured text
  Plug 'Rykka/riv.vim', { 'for': 'rst' }
"  Plug 'suan/vim-instant-markdown' -- doesn't work
"  Nix
  Plug 'LnL7/vim-nix'

" Nerdtree:
  Plug 'cespare/vim-toml'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-scripts/vim-nerdtree_plugin_open'
  Plug 'eugen0329/vim-esearch' " In place of vim-ack and nerdtree-ack
" Tmxu navigator has to come after NERDTree to override navigation
  Plug 'bitterjug/vim-tmux-navigator'

" Search:
  " Remove far  and ferret in favour of CocSearch
  " Plug 'brooth/far.vim'
  " Plug 'wincent/ferret' " seems to add not much more than esearch
  Plug 'eugen0329/vim-esearch' " In place of vim-ack and nerdtree-ack
  Plug 'yssl/QFEnter' " make it easier to use quickfix
  Plug 'tpope/vim-unimpaired'

" Programming:
  " Plug 'luochen1990/rainbow'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'kassio/neoterm'
  Plug 'majutsushi/tagbar'
" Plug 'bitterjug/vim-easytags'
  Plug 'dense-analysis/ale'
  Plug 'thirtythreeforty/lessspace.vim'
  Plug 'Rykka/colorv.vim', { 'for': 'vim' }
  Plug 'jeetsukumaran/vim-indentwise'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'kana/vim-textobj-user' 
  Plug 'kana/vim-textobj-line'
"  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'pseewald/vim-anyfold'
  Plug 'konfekt/foldtext'
  Plug 'scrooloose/nerdcommenter'
  Plug 'terryma/vim-expand-region'
  Plug 'phaazon/hop.nvim'
" Try out coc 
  let g:coc_global_extensions = ['coc-explorer', 'coc-markdownlint']
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'antoinemadec/coc-fzf'

"  Plug 'justinmk/vim-sneak'

" Haskell:
"  Plug 'bitc/vim-hdevtools' -- relies on ghc-mod :(
"  Plug 'parsonsmatt/intero-neovim' -- cool, uses the repl
"  Plug 'autozimu/LanguageClient-neovim', {
"    \ 'for': 'javascript',
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh'
"    \ }
  Plug 'neovimhaskell/haskell-vim'
  Plug 'monkoose/fzf-hoogle.vim'
  Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
  Plug 'alx741/vim-hindent', { 'for': 'haskell' }

" Rest and Json:
  Plug 'elzr/vim-json'
  Plug 'diepm/vim-rest-console', { 'for': 'rest' }

" Javascript:
  "Plug 'jelera/vim-javascript-syntax'
  Plug 'pangloss/vim-javascript'

" Purescript:
  Plug 'purescript-contrib/purescript-vim', { 'for': 'purescript' }
  Plug 'FrigoEU/psc-ide-vim', { 'for': 'purescript' }
  Plug 'vim-syntastic/syntastic', { 'for': 'purescript' }

" Elm:
  " Plug 'elmcast/elm-vim', { 'for': 'elm' }
"  Plug '~/workspace/vim-tagbar-ctags-elm'
  Plug 'tweekmonster/braceless.vim', { 'for': 'elm' }

" Python:
" If I write python now I will probnably want to set up coc 
"  Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Elixir:
  Plug 'elixir-lang/vim-elixir'
  Plug 'thinca/vim-ref', { 'for': 'elixir' }
  Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
" disabled because of problems editing my test files
"  Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

" Docker:
  Plug 'ekalinin/Dockerfile.vim'

" Arduino: (for Keyboardio)
  Plug 'sudar/vim-arduino-syntax'

" Notes:
"  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
 " Plug 'vimwiki/vimwiki'
  Plug 'alok/notational-fzf-vim'
  Plug 'dbeniamine/todo.txt-vim'

" Colorschemes:
  Plug 'bitterjug/vim-colors-bitterjug'
"  Plug '~/workspace/vim/vim-colors-bitterjug'
  Plug 'bitterjug/vim-colors-freyr'
"  Plug 'chriskempson/base16-vim'
"  Plug 'jnurmine/Zenburn'
"  Plug 'morhetz/gruvbox'
"  Plug 'mhinz/vim-janah'

" Tools:
  Plug 'jlanzarotta/bufexplorer'
  Plug 'ryanoasis/vim-devicons'

" Fzf
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
  Plug 'junegunn/fzf.vim'
  Plug 'tweekmonster/fzf-filemru'

" Git:
  Plug 'lambdalisue/gina.vim'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'sodapopcan/vim-twiggy'
  Plug 'tpope/vim-dispatch'

"  Plug 'gregsexton/gitv' 
"  Try gv in place of gitv
  Plug 'junegunn/gv.vim'

"  Plug 'idanarye/vim-merginal'
  Plug 'rhysd/conflict-marker.vim'

"  Plug 'whiteinge/diffconflicts'
  Plug 'samoshkin/vim-mergetool'

" Plug 'airblade/vim-gitgutter'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

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

" set guifont=JetBrainsMono\ Nerd\ Font\ Mono
set guifont=Hasklug\ Nerd\ Font
