" dont dump files in the working dir
  let g:elm_make_output_file = "/dev/null"
" Dont make bindings: Stop elm blathering <Leader>m
  let g:elm_setup_keybindings = 0

" Disable format on save -- try via lsp
  let g:elm_format_autosave = 0

"set manual fold 
  set foldmethod=manual
