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
