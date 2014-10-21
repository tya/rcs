" open up config files in a new vertical window
nnoremap <Leader>em <C-w><C-v><C-l>:e $CONFIGHOME/vim/manager.vim <CR>
nnoremap <Leader>eu <C-w><C-v><C-l>:e $CONFIGHOME/vim/unix.vim <CR>
nnoremap <Leader>ep <C-w><C-v><C-l>:e $CONFIGHOME/vim/plugins.vim <CR>
nnoremap <Leader>eg <C-w><C-v><C-l>:e $CONFIGHOME/configs/gitconfig<CR>
nnoremap <Leader>eb <C-w><C-v><C-l>:e $CONFIGHOME/configs/bashrc <CR>
nnoremap <Leader>et <C-w><C-v><C-l>:e $CONFIGHOME/configs/tmux.conf <CR>
if filereadable(expand("~/vimrc.local"))
    nnoremap <Leader>ev <C-w><C-v><C-l>:e ~/vimrc.local<CR>
endif
if filereadable(expand("~/bashrc.local"))
    nnoremap <Leader>el <C-w><C-v><C-l>:e ~/bashrc.local<CR>
endif
if filereadable(expand("~/gitconfig.local"))
    nnoremap <Leader>ei <C-w><C-v><C-l>:e ~/gitconfig.local<CR>
endif

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
