" fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

" easy align
vnoremap <silent> <Enter> :EasyAlign<cr>

" delmimitMate
imap <C-f> <Plug>delimitMateJumpMany
