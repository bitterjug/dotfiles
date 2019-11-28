" Configure for Haskell Ide Engine
  let g:LanguageClient_serverCommands = {
    \'haskell': ['hie-wrapper'],
    \'javascript': ['javascript-typescript-stdio'],
    \}

 
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
