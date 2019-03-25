" Enable only haskell ide engine
  let b:ale_linters = ['hie']

" Default language server bindings
  nnoremap <F5> :call LanguageClient_contextMenu()<CR>

  " Show info on the symbol under the cursor
  map <Leader>lk :call LanguageClient#textDocument_hover()<CR>

  " Go to definition of symbol
  map <Leader>lg :call LanguageClient#textDocument_definition()<CR>

  " Rename
  map <Leader>lr :call LanguageClient#textDocument_rename()<CR>

  " Like Elm Format
  map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>

  " FZF buffer with references to the thing defined under the cursor
  map <Leader>lb :call LanguageClient#textDocument_references()<CR>

  " code actions like duplicate definiton or promote
  map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>

  "
  map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
