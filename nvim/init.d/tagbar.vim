" TagBar
  nmap <Leader>o :TagbarOpenAutoClose<enter>
  " I prefer tags in file order, unless I sort them
  let g:tagbar_sort = 0
  let g:tagbar_foldlevel = 1
  " Use Universal Ctags
"  let g:tagbar_ctags_bin = '/home/mark/workspace/ctags/ctags'

" Make signatures visible
  highlight link TagbarSignature Identifier
