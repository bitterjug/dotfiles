" cmpleteopt
"set completeopt=preview,menuone,longest

"supertab.
  let g:SuperTabLongestEnhanced = 1
  let g:SuperTabLongestHighlight = 0
  " let g:SuperTabDefaultCompletionType="<c-x><c-o>"
  let g:SuperTabDefaultCompletionType="<c-n>"


"clevertab
"inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
"                      \<c-r>=CleverTab#Complete('tab')<cr>
"                      \<c-r>=CleverTab#Complete('ultisnips')<cr>
"                      \<c-r>=CleverTab#Complete('keyword')<cr>
"                      " \<c-r>=CleverTab#Complete('neocomplete')<cr>
"                      \<c-r>=CleverTab#Complete('omni')<cr>
"                      \<c-r>=CleverTab#Complete('stop')<cr>
"inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>



"NCM2
" enable ncm2 for Haskell buffers
"    autocmd BufEnter *.hs call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect
" Use <TAB> to select the popup menu:
"  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

