" let g:mwDefaultHighlightingPalette = 'extended'
" let g:mwDefaultHighlightingPalette = 'maximum'

let g:mwMaxMatchPriority = 100
" Make it easier to clear marks
" noreabbrev mc MarkClear

" Turn out the lights
  nmap <Leader>M <Plug>MarkToggle

" Re-bind N and n to search among marks
" falling back to the last search if not on a mark
  nmap , <Plug>MarkSearchNext
  nmap <Leader>, <Plug>MarkSearchPrev

" Clear all mark information
  nmap <Leader>N <Plug>MarkAllClear


" If you don't want the * and # mappings remember the last search type and
" instead always search for the next occurrence of the current mark, with a
" fallback to Vim's original * command, use: 
  nmap * <Plug>MarkSearchOrCurNext
  nmap # <Plug>MarkSearchOrCurPrev

" See /after/plugin/mark.vim for custom palette
