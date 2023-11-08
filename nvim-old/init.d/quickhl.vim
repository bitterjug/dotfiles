"
" Disabled in favour of inkarat/vim-mark
" see marks.vim
"
if exists('g:loaded_quickhl')
  let g:quickhl_cword_hl_command = 'link QuickhlCword SpellRare'

  " Make manual highlights more important than ALE errors!
  let g:quickhl_manual_hl_priority = 50

    nmap <Space>m <Plug>(quickhl-manual-this-whole-word)
    nmap <Space>w <Plug>(quickhl-manual-this)
    xmap <Space>m <Plug>(quickhl-manual-this)
    nmap <Space>M <Plug>(quickhl-manual-reset)
    xmap <Space>M <Plug>(quickhl-manual-reset)
    nmap <Space>. <Plug>(quickhl-cword-toggle)

  " nmap <Space>] <Plug>(quickhl-tag-toggle)

  " map H <Plug>(operator-quickhl-manual-this-motion)

  " Custom colours: no bold
    let g:quickhl_manual_colors = [
          \ "ctermfg=16 ctermbg=153 guifg=#ffffff guibg=#0a7383",
          \ "ctermfg=7  ctermbg=1   guibg=#a07040 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=2   guibg=#4070a0 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=3   guibg=#40a070 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=4   guibg=#70a040 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=5   guibg=#0070e0 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=6   guibg=#007020 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=21  guibg=#d4a00d guifg=#ffffff",
          \ "ctermfg=7  ctermbg=22  guibg=#06287e guifg=#ffffff",
          \ "ctermfg=7  ctermbg=45  guibg=#5b3674 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=16  guibg=#4c8f2f guifg=#ffffff",
          \ "ctermfg=7  ctermbg=50  guibg=#1060a0 guifg=#ffffff",
          \ "ctermfg=7  ctermbg=56  guibg=#a0b0c0 guifg=black",
          \ ]
endif
