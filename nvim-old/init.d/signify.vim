
let g:signify_sign_add               = '│'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '│'

highlight link SignifySignAdd             GitGutterAdd
highlight link SignifySignChange          GitGutterChange
highlight link SignifySignDelete          GitGutterDelete
highlight link SignifySignDeleteFirstLine GitGutterDelete
