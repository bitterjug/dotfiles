
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
"  accept  completion in coc with CR
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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

" Fold command
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Coc-fzf
" Floating layuout
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }
let g:fzf_layout = { 'down': '~40%' }

nnoremap <leader>ol :CocFzfList outline<cr>
nnoremap <leader>oa :CocAction<cr>
" inoremap <c-x> <plug>(fzf-complete-line)

" noremap <silent> <Tab> :CocCommand explorer --quit-on-open --position floating  --reveal % <cr>

" Instead of nerd tree
noremap <silent> - :CocCommand explorer --quit-on-open<cr>

