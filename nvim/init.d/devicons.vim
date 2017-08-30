" Entre characters qith ^vunnnn
"http://vim.wikia.com/wiki/Entering_special_characters
"Glyphs here
"https://github.com/ryanoasis/nerd-fonts#glyph-sets
"  let g:DevIconsEnableFolderPatternMatching = 0
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
" Custom icon for elm
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['elm'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rst'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rst'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ex'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['exs'] = ''

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Dockerfile'] = ''

" Custom colour for elm using vim-nerdtree-syntax-highlighting
let s:elmblue = '60B5CC'
let s:grey    = 'CCCCCC'
let s:grey    = 'CCCCCC'
let s:elixir  = '7a6fa3'
let s:elixirs  = 'ffae1c'
let g:NERDTreeExtensionHighlightColor = {} 
let g:NERDTreeExtensionHighlightColor['elm'] = s:elmblue 
let g:NERDTreeExtensionHighlightColor['ex'] = s:elixir
let g:NERDTreeExtensionHighlightColor['exs'] = s:elixirs 


let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreePatternMatchHighlightColor['^..init..\.py$'] = 'FFFFFF'

" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
