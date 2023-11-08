" Remove white space at end of 
autocmd BufEnter * if &ft ==# 'python' | :%s/\s\+$//e
