" Open up config files in a new vertical window
nnoremap <Leader>em <C-w><C-v><C-l>:e $CONFIGHOME/vim/winmanager.vim <CR>
nnoremap <Leader>ew <C-w><C-v><C-l>:e $CONFIGHOME/windows.vim <CR>
nnoremap <Leader>ep <C-w><C-v><C-l>:e $CONFIGHOME/winplugins.vim <CR>
if filereadable($VIMLOCAL)
    nnoremap <Leader>ev <C-w><C-v><C-l>:e $VIMLOCAL<CR>
endif

" gui stuff
if has('gui_running')
    colorscheme solarized
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=b
    set guioptions-=B
    set guifont=Consolas:h11:cANSI
endif

