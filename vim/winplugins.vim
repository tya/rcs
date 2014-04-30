if executable('git')
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
endif

"airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

"easy align
vnoremap <silent> <Enter> :EasyAlign<cr>

"delmimitMate
imap <C-f> <Plug>delimitMateJumpMany

"Large file
let g:LargeFile = 11

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

"Ctrlp
let g:ctrlp_switch_buffer = 'et'
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>cp :CtrlP<Space>
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            \ }
let g:ctrlp_user_command = {
            \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files --exclude-standard -co'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': 'dir %s /-n /b /s /a-d'
            \ }
