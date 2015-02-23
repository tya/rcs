" Filebeagle
let g:filebeagle_suppress_keymaps = 1
map <silent> <Leader>wd <Plug>FileBeagleOpenCurrentWorkingDir
map <silent> - <Plug>FileBeagleOpenCurrentBufferDir

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

" hardmode
nnoremap <leader>hm <Esc>:call ToggleHardMode()<CR>
