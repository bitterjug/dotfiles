" let g:ale_fixers = { 'elm': ['elm-format'] }

let g:ale_sign_error = '✖'
let g:ale_sign_warning = ''
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never' " 'always'
let g:ale_lint_delay = 1000

let g:ale_writegood_options = '--yes-eprime'

nmap <silent> <Leader>d <Plug>(ale_detail)
nmap <silent> <Leader>l <Plug>(ale_lint)
nmap <silent> <Leader>j <Plug>(ale_next_wrap)
nmap <silent> <Leader>k <Plug>(ale_previous_wrap)
nmap <silent> <Leader>f <Plug>(ale_fix)


let g:ale_lint_delay = 500
