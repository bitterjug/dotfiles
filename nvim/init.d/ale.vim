  let g:ale_fixers = { 
   \ 'elm': ['elm-format'],
   \ 'javascript': ['eslint']
   \ }
  let g:ale_linters = {
    \ 'elm': ['make'],
    \ 'javascript': ['eslint']
    \ }

  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = ''
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_enter = 1
  let g:ale_sign_column_always = 1
  let g:ale_lint_on_text_changed = 'never' " 'always'
  let g:ale_lint_delay = 3000


  nmap <silent> <Leader>d <Plug>(ale_detail)

  nmap <silent> <Leader>g <Plug>(ale_go_to_definition)
  nmap <silent> <Leader>v <Plug>(ale_go_to_definition_in_vsplit)
  nmap <silent> <Leader>s <Plug>(ale_go_to_definition_in_split)
  nmap <silent> <Leader>i <Plug>(ale_hover)
  nmap <silent> <Leader>l <Plug>(ale_lint)
  nmap <silent> <Leader>j <Plug>(ale_next_wrap)
  nmap <silent> <Leader>k <Plug>(ale_previous_wrap)
  nmap <silent> <Leader>f <Plug>(ale_fix)


" elm
"  let g:ale_elm_ls_use_global = 1

" Text
  let g:ale_writegood_options = '--yes-eprime'
