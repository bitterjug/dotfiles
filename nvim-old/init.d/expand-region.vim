
    xmap v <Plug>(expand_region_expand)
    xmap V <Plug>(expand_region_shrink)

    " Extend the global default (NOTE: Remove comments in dictionary before sourcing)
    call expand_region#custom_text_objects({
          \ 'a]' :1, 
          \ 'aB' :1, 
          \ 'ab' :1, 
          \ 'a"' :1,
          \ 'af' :1,
          \ 'il' :0, 
          \ })

  "          \ 'ii' :0, 
  "           'inside indent'. Available through https://github.com/kana/vim-textobj-indent
  "          \ 'ai' :0, 
  "          " 'around indent'. Available through https://github.com/kana/vim-textobj-indent
