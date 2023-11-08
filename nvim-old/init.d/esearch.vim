" Turn on syntax highlighting for elm
  let g:esearch#out#win#context_syntax_highlight = 1
  let g:esearch#out#win#syntax_regeps = {
  \ 'elm': '\.elm$',
  \}

 hi esearchFName guibg=#282844 gui=none guifg=#ddddff

 let g:esearch#util#trunc_omission = ''
