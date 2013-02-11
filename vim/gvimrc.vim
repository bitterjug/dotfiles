" Mark's own colours (should make this into a git project)
    colorscheme freyr

" Gui options: get rid of most of it
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=T
    set guioptions-=c
    set guioptions-=l
    set guioptions-=L
    set guioptions+=A
    set guioptions+=a
    set guioptions+=c " Don't pop up dialogues

" Gui font
"    set guifont=Ubuntu\ Mono\ 12
"    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
    set guifont=Source\ Code\ Pro\ for\ Powerline\ 11
    let Powerline_symbols = 'fancy'

" Make marked files show up in explorer
    hi netrwMarkFile gui=inverse
