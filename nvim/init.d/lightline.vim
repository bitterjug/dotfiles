
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'fugitive', 'filename' ],
      \             [ 'linter_checking', 'linter_ok', 'linter_warnings', 'linter_errors', 'coc_errors' ],
      \             [ 'status' ]
      \           ],
      \   'right': [ [ 'lineinfo' ], 
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] 
      \            ]
      \ },
      \ 'component_function': {
      \   'readonly': 'MyReadonly',
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
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \   'coc_warnings': 'lightline#coc#warnings',
      \   'coc_errors': 'lightline#coc#errors',
      \   'coc_info': 'lightline#coc#info',
      \   'coc_hints': 'lightline#coc#hints',
      \   'coc_ok': 'lightline#coc#ok',
      \   'status': 'lightline#coc#status',
      \ },
      \ 'component_type': {
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'info',
      \   'readonly': 'error',
      \   'coc_warnings': 'warning',
      \   'coc_errors': 'error',
      \   'coc_info': 'info',
      \   'coc_hints': 'hints',
      \   'coc_ok': 'left',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'tabline_separator': { 'left': '', 'right': '' },
      \ 'tab_component': { 'left': [ [ 'tabnum'], [ 'filename', 'modified' ] ] },
      \ 'tabline_subseparator': { 'left': '⋮', 'right': '' },
      \ 'tab_component_function':  {
      \   'modified': 'MyTabModified',
      \ }
  \ }
" \ 'separator': { 'left': '', 'right': '' },
" \ 'subseparator': { 'left': '', 'right': '' }
"
function MyVFPercent()
    return &ft =~? 'coc-explorer' ? '' : (100 * line('.') / line('$')) . '%'
endfunction

function MyVFLineInfo()
    return &ft =~? 'coc-explorer' ? '' : line('.').':'.col('.')
endfunction

function! MyModified()
  return &ft =~ 'help' ? '' : &modified ? ' ' : &modifiable ? '' : '-'
endfunction

function! MyTabModified(n) abort
  let winnr = tabpagewinnr(a:n)
  return gettabwinvar(a:n, winnr, '&modified') ? '' : gettabwinvar(a:n, winnr, '&modifiable') ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help|coc-explorer' && &readonly ? '' : ''
endfunction
" 

function! MyVimFilerStatus()
   let parts = split(vimfiler#get_status_string())
   return parts[0] . (parts[-1] == '*safe*' ? '⭤' : '')
endfunction

function! MyFilename()
  let fname =  expand('%:t')
  "let fullname =  expand('%:p:~:.:h:h:t') . '/' .  expand('%:p:~:.:h:t') . '/' . fname
  let fullname =  expand('%:p:~:.')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo' ? '' :
        \ fname =~ 'coc-explorer' ? 'coc-explorer' :
        \ &ft == 'vimfiler' ? MyVimFilerStatus():
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ MyFTSymbol() . ' ' .
        \ ('' != fname ? fullname : '[No Name]') .
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


let g:lightline#ale#indicator_checking = '  '
let g:lightline#ale#indicator_warnings = '  '
let g:lightline#ale#indicator_errors = '✖  '
let g:lightline#ale#indicator_ok = '  '


" Show status line when only one window
set laststatus=2
" Update after running the linter
" autocmd User ALELint call lightline#update()




