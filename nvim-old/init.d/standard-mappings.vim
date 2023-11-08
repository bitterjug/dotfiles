" Cancel hls
  noremap <Leader>h :silent nohlsearch<cr>

" easier colons
" Never semem to use them
"  nnoremap ; :

"  c-s to save
  nnoremap <C-s> :w<cr>

" inoremap <c-s> <c-o>:w<cr>
  inoremap <c-s> <esc>:w<cr>

" Search for visual selection, using 'v' buffer
vnoremap <Leader>/ "vy/<c-r>v<cr>


