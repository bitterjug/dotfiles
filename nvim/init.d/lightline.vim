
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], 
      \             [ 'readonly', 'fugitive', 'filename' ],
      \             [ 'linter_ok', 'linter_warnings', 'linter_errors' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], 
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'percent': 'MyVFPercent',
      \   'lineinfo': 'MyVFLineInfo',
      \ },
      \ 'component_visible_condition': {
      \    'percent': 0,
      \ },
      \ 'component_expand': {
      \   'linter_warnings': 'LightlineLinterWarnings',
      \   'linter_errors': 'LightlineLinterErrors',
      \   'linter_ok': 'LightlineLinterOK',
      \ },
      \ 'component_type': {
      \   'readonly': 'error',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }     
  \ }
" \ 'separator': { 'left': '', 'right': '' },
" \ 'subseparator': { 'left': '', 'right': '' }     
"
function MyVFPercent()
    return &ft =~? 'nerdtree' ? '' : (100 * line('.') / line('$')) . '%'
endfunction

function MyVFLineInfo()
    return &ft =~? 'nerdtree' ? '' : line('.').':'.col('.')
endfunction

function! MyModified()
  return &ft =~ 'help' ? '' : &modified ? ' ' : &modifiable ? '' : ' '
endfunction

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? '' : ''
endfunction
" 

function! MyVimFilerStatus()
   let parts = split(vimfiler#get_status_string())
   return parts[0] . (parts[-1] == '*safe*' ? '⭤' : '')
endfunction

function! MyFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? MyVimFilerStatus():
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ MyFTSymbol() .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != MyReadonly() ? ' ' . MyReadonly() : '') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let _ = strpart(fugitive#head(), 0, 20)
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? 
        \ (&fileformat . ' ' .  WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! MyFTSymbol()
  return strlen(&filetype) ?   WebDevIconsGetFileTypeSymbol() : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? 
        \ (strlen(&filetype) ? 
            \ &filetype  .  ' ' . WebDevIconsGetFileTypeSymbol() : 
            \'no ft') :
        \ ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? '' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:all_non_errors == 0 ? '' : printf('%d  ', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:all_errors == 0 ? '' : printf('%d ✖ ', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? ' ' : ''
endfunction

" Show status line when only one window
set laststatus=2
" Update after running the linter
autocmd User ALELint call lightline#update()
