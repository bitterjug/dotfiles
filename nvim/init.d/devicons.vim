
"  let g:DevIconsEnableFolderPatternMatching = 0
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
" Custom icon for elm
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['elm'] = 'e'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rst'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rst'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''

" Custom colour for elm using vim-nerdtree-syntax-highlighting
let s:elmblue = '60B5CC'
let s:grey    = 'CCCCCC'
let g:NERDTreeExtensionHighlightColor = {} 
let g:NERDTreeExtensionHighlightColor['elm'] = s:elmblue 

let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreePatternMatchHighlightColor['^..init..\.py$'] = 'FFFFFF'

" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
