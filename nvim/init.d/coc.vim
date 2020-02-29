
" Jump to next diagnostic position.
"  noremap <Leader>j <Plug>(coc-diagnostic-next)
"  noremap <Leader>k <Plug>(coc-diagnostic-prev)

"fix
  noremap <Leader>f <Plug>(coc-fix-current)

" go to definition
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gd <Plug>(coc-definition)

 " Use <TAB> to select the popup menu:, enter to confirm
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
"                          \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
