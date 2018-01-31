" cmpleteopt
set completeopt=preview,menuone,longest

"let g:SuperTabLongestEnhanced = 1
"let g:SuperTabLongestHighlight = 0
"" let g:SuperTabDefaultCompletionType="<c-x><c-o>"
"let g:SuperTabDefaultCompletionType="<c-n>"

" call CleverTab#KeywordFirst()

inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
                      \<c-r>=CleverTab#Complete('tab')<cr>
                      \<c-r>=CleverTab#Complete('ultisnips')<cr>
                      \<c-r>=CleverTab#Complete('keyword')<cr>
                      " \<c-r>=CleverTab#Complete('neocomplete')<cr>
                      \<c-r>=CleverTab#Complete('omni')<cr>
                      \<c-r>=CleverTab#Complete('stop')<cr>
inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>
