" Elm
  let g:elm_format_autosave = 1

"
  set tabstop=4
  set number
  set nowrap
  set shiftwidth=4

" Its programming, give me line numbers
  set number

" Make functions look like headings
  hi link elmTopLevelDecl Title

" Prevent elm-vim from blathering <leader>M for mark
  let g:elm_setup_keybindings = 0
  let g:elm_syntastic_show_warnings = 1
  nmap <c-e>m <Plug>(elm-make)
  nmap <c-e><c-m> <Plug>(elm-make)
  nmap <c-e>d <Plug>(elm-error-detail)
  nmap <c-e>b <Plug>(elm-browse-docs)
  nmap <c-e>s <Plug>(elm-show-docs)
  nmap <c-e>f :ElmFormat<enter>

"While typing
  inoremap <c-e>t -> 
  inoremap <c-e>l -> 
  inoremap <c-e>, <| 
  inoremap <c-e>. |> 
