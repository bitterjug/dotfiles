
" We'll do our own mappings
  let g:FerretMap=0

  let g:FerretHlsearch=1

" Ack
  nmap <leader>a <Plug>(FerretAck)

" Ack word under cursor
  nmap <leader><s-a> <Plug>(FerretAckWord)

"  Replace last search
  nmap <leader><s-r> <Plug>(FerretAcks)

" Don't split when openeing locations unless I ^w first
  autocmd BufReadPost quickfix setlocal switchbuf-=split

