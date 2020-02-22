" Use label mode?
"  let g:sneak#label = 1
"
if exists('g:loaded_sneak_plugin')

  " clever s use the same key again
    let g:sneak#s_next = 1


  " 1-character enhanced 'f'
  nmap f <Plug>Sneak_f
  nmap F <Plug>Sneak_F

  " visual-mode
  xmap f <Plug>Sneak_f
  xmap F <Plug>Sneak_F

  " operator-pending-mode
  omap f <Plug>Sneak_f
  omap F <Plug>Sneak_F

  " 1-character enhanced 't'
  nmap t <Plug>Sneak_t
  nmap T <Plug>Sneak_T
  " visual-mode
  xmap t <Plug>Sneak_t
  xmap T <Plug>Sneak_T

  " operator-pending-mode
  omap t <Plug>Sneak_t
  omap T <Plug>Sneak_T

  " label-mode
  "nmap <leader>s <Plug>SneakLabel_s
  "nmap <leader>S <Plug>SneakLabel_S

  nmap <leader>s <Plug>Sneak_s
  nmap <leader>S <Plug>Sneak_S
endif
