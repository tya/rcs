" gui stuff
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=b
    set guioptions-=B
    set guifont=Inconsolata-g\ 11
else
    set t_Co=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    let g:solarized_termcolors=256
endif
