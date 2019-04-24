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
  nmap <Leader>N <Plug>MarkConfirmAllClear

" See /after/plugin/mark.vim for custom palette
