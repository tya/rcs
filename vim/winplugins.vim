"fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gg :Ggrep!<Space>
nnoremap <Leader>gl :Glog! -S

"gitv
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_DoNotMapCtrlKey = 1
nnoremap <Leader>gv :Gitv --all<CR>
nnoremap <Leader>gV :Gitv! --all<CR>

"airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

"delmimitMate
imap <C-f> <Plug>delimitMateJumpMany

"todo
let g:todo_states = [['TODO(t)', '|', 'DONE(d)', 'CANCELLED(c)'],
        \['WAITING(w)', 'HOLD(h)', 'INPROGRESS(i)', 'SOMEDAY(s)', 'CLOSED(l)']]
let g:todo_state_colors = {
        \'DONE': 'Green',
        \'CLOSED': 'Grey',
        \'CANCELLED': 'Red',
        \'TODO': 'Blue',
        \'WAITING': 'Yellow',
        \'HOLD': 'Grey',
        \'INPROGRESS': 'Cyan',
        \'SOMEDAY': 'Grey'
        \}
