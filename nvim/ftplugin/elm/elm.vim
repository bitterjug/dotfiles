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

  hi link elmFuncName Title

" Prevent elm-vim from blathering <leader>M for mark
  let g:elm_setup_keybindings = 0
  let g:elm_syntastic_show_warnings = 1
  nmap <c-e>m <Plug>(elm-make)
  nmap <c-e><c-m> <Plug>(elm-make)
  nmap <c-e>d <Plug>(elm-error-detail)
  nmap <c-e>b <Plug>(elm-browse-docs)
  nmap <c-e>s <Plug>(elm-show-docs)
  nmap <c-e>f :ElmFormat<enter>

" Search for the word under the cursor as
" -- a type definition
" -- type constructor
" -- import
" -- exposed import
" -- function
"  /\(...\|...\)<enter> search for one of the options
"  ^type... type definition
"  ^<c-r><c-w> word under the cursor at start of line
" as <c-r><c-w> import as
"  exposing... exposed in inport
"  [=\|]\s... type constructor
" Should also add custom type constructors and import as or import
  noremap <c-e>/ /\(^type .*\<<c-r><c-w>\>.*\_s\s*=\\|^\s*<c-r><c-w>\>.*=$\\|as \<<c-r><c-w>\>\\|exposing\_s\+([^)]*\<<c-r><c-w>\>\\|^\s\+[=\|]\s\<<c-r><c-w>\>\)<enter>zz

"Add the word under the cursor to the export list
" mx mark x
" yaw yank a word
" gg to top
" /(<cr> search for exposing list
" p paste
" a,<esc> add a comma
" :w<cr> save  file to run elm format
" `x return to mark x
  noremap <c-e>x mxyawgg/(<cr>pa,<esc>:w<cr>`x

"  Would be good if could combine with the following (maybe this should be
"  done with tags)
" Searching for custom type constructor in current file
" noremap <c-e># /^type\s[^a].*\(\_s*[=\|]\s.*\)*<c-r><c-w><enter>

" Split window at imports
  nmap <c-e>i :split<cr>gg}oimport<space><c-x><c-l>

" While typing
  inoremap <buffer> <c-e>t -><space>
  inoremap <buffer> <c-e>l -><space>
  inoremap <buffer> <c-e>, <<bar><space>
  inoremap <buffer> <c-e>. <bar>><space>
  noremap <buffer> <c-e>. mm_i<bar>><space><esc>`mlll


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

" Highlight todo and log
syn match elmTodo contained /Debug.\(todo\|log\)\s\+"[^"]*"/
hi def link elmTodo Todo

" lock elm compiler before running
let b:ale_command_wrapper = 'flock -n /tmp/lockfile.elm -c %@'
