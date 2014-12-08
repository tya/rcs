" supertab
let g:SuperTabDefaultCompletionType = "context"

" Filebeagle
let g:filebeagle_suppress_keymaps = 1
map <silent> <Leader>wd <Plug>FileBeagleOpenCurrentWorkingDir
map <silent> - <Plug>FileBeagleOpenCurrentBufferDir

" fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gg :Ggrep!<Space>
nnoremap <Leader>gl :Glog! -S

" gitv
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_DoNotMapCtrlKey = 1
nnoremap <Leader>gv :Gitv --all<CR>
nnoremap <Leader>gV :Gitv! --all<CR>

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

" easy align
vnoremap <silent> <Enter> :EasyAlign<cr>

" delmimitMate
imap <C-f> <Plug>delimitMateJumpMany
