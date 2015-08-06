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

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
let g:incsearch#magic = '\v'
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" filebeagle
let g:filebeagle_suppress_keymaps = 1
map <silent><Leader>fe <Plug>FileBeagleOpenCurrentBufferDir
