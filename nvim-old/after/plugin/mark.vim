if ! exists('g:mwPalettes')	" (Optional) guard if the plugin isn't properly installed.
finish
endif

let g:mwPalettes['bitterjug'] = [
  \ { 'guibg':'#0a7383', 'guifg':'#ffffff' },
  \ { 'guibg':'#a07040', 'guifg':'#ffffff' },
  \ { 'guibg':'#4070a0', 'guifg':'#ffffff' },
  \ { 'guibg':'#40a070', 'guifg':'#ffffff' },
  \ { 'guibg':'#70a040', 'guifg':'#ffffff' },
  \ { 'guibg':'#0070e0', 'guifg':'#ffffff' },
  \ { 'guibg':'#007020', 'guifg':'#ffffff' },
  \ { 'guibg':'#d4a00d', 'guifg':'#ffffff' },
  \ { 'guibg':'#06287e', 'guifg':'#ffffff' },
  \ { 'guibg':'#5b3674', 'guifg':'#ffffff' },
  \ { 'guibg':'#4c8f2f', 'guifg':'#ffffff' },
  \ { 'guibg':'#1060a0', 'guifg':'#ffffff' },
  \ { 'guibg':'#a0b0c0', 'guifg':'#ffffff' }
\]
let g:mwPalettes['dark'] = [
  \ { 'guibg':'#033333', 'guifg':'none' },
  \ { 'guibg':'#330333', 'guifg':'none' },
  \ { 'guibg':'#333303', 'guifg':'none' },
  \ { 'guibg':'#030366', 'guifg':'none' },
  \ { 'guibg':'#0a0a44', 'guifg':'none' },
  \ { 'guibg':'#222222', 'guifg':'none' },
  \ { 'guibg':'#221155', 'guifg':'none' },
  \ { 'guibg':'#002244', 'guifg':'none' },
  \ { 'guibg':'#06287e', 'guifg':'none' },
  \ { 'guibg':'#331122', 'guifg':'none' },
  \ { 'guibg':'#332211', 'guifg':'none' },
  \ { 'guibg':'#112233', 'guifg':'none' },
  \ { 'guibg':'#113322', 'guifg':'none' }
\]

MarkPalette bitterjug
