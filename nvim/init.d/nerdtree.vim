"Nerd Tree
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapJumpParent = 'h'
let g:NERDTreeMapUpdirKeepOpen = 'H'
let g:NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']
let g:NERDTreeMinimalUI=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeHijackNetrw=1
" Open NERDTree in the directory of the current file (or /home if no file is open)
" nmap <silent> <C-i> :call NERDTreeToggleInCurDir()<cr>
" nmap <silent> <Leader><Tab> :call NERDTreeToggleInCurDir()<cr>
function! NERDTreeToggleInCurDir()
" If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else

    exe ":NERDTreeFind"
  endif
endfunction

function! StartUp()
if 0 == argc()
  NERDTree
end
endfunction

" Enable open plugin
let g:nerdtree_plugin_open_cmd = 'xdg-open'
