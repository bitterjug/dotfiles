" Elm
  let g:elm_format_autosave = 1

"
  set tabstop=4
  set number
  set nowrap
  set shiftwidth=4

" Its programming, Ill turn on line numbers when I want
  set nonumber

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

" Search for the curren type defined in the current file
" could be extended to search for function definitions too
  noremap <c-e>/ /^type .*<c-r><c-w>.*\_s\s*=<enter>

" Split window at imports
  nmap <c-e>i :split<cr>gg}oimport<space><c-x><c-l>

" While typing
  inoremap <buffer> <c-e>t -><space>
  inoremap <buffer> <c-e>l -><space>
  inoremap <buffer> <c-e>, <|<space>
  inoremap <buffer> <c-e>. |><space>

" Match let:in if:else
  let b:match_words='\<if\>:\<else\>,\<let\>:\<in\>'


" from: http://vim.wikia.com/wiki/VimTip112
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
  nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
  nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
  nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<CR>
  nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<CR>
  vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
  vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
  vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
  vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
  onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
  onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
  onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
  onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>

" Control [] jump up and down to lines with the same indentation
  " map <c-[> [l
  map <buffer> <c-]> ]l

" Experimental try to make ALE run elm-make 0.18 more effectively
"  let b:ale_command_wrapper = 'sysconfcpus -n 1' " nice -n 18'
let b:ale_command_wrapper = 'flock -n /tmp/lockfile.elm -c %@'
