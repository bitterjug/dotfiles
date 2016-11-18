let g:tagbar_ctags_bin = '/home/mark/workspace/ctags/ctags'
if !executable('ctags')
    finish
elseif globpath(&rtp, 'plugin/tagbar.vim') == ""
    finish
endif

function! s:SetTagbar()
    if !exists("g:tagbar_type_elm")
        let g:tagbar_type_elm = {
            \ 'ctagstype' : 'elm',
            \ 'kinds'     : [
                \ 't:types:1:0',
                \ 'a:type aliases:1:0',
                \ 'c:constants:1:0',
                \ 'f:functions:0:0',
                \ 'p:ports:0:0'
                \ ],
            \ 'sro'      : ':',
            \ 'kind2scope' : {
                \ 'f' : 'function'
            \ }
        \ }
    endif
endfunction

call s:SetTagbar()
