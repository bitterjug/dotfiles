" Enable ESLint only for Javascript
  let b:ale_linters = ['jshint']

" We use eslint in the specs directory only
  let g:ale_pattern_options_enabled = 1
  let g:ale_pattern_options = {
      \   'specs.*\.js$': {
      \       'ale_linters': ['eslint', 'jshint'],
      \   },
      \}
