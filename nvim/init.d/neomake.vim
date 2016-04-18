" Run linters on save or buffer enter
autocmd BufWritePost,BufEnter * Neomake

" From this post:
" https://gregjs.com/vim/2015/lint-as-you-type-with-neovim-and-neomake/
" here's how to run linter after every change:
" autocmd InsertChange,TextChanged * update | Neomake
" set undodir=~/.config/nvim/undodir
" set undofile
