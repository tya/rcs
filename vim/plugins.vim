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

"ctlrsf
if executable('ag')
  nnoremap <Leader>fo :CtrlSFOpen<CR>
  nnoremap <Leader>ff :CtrlSF<Space>
endif


"syntastic
nnoremap <F8> :SyntasticCheck<CR>:Errors<CR>:lclose<CR>
nnoremap <F7> :SyntasticReset<CR>
let g:synastic_auto_loc_list = 1
let g:syntastic_mode_map = {'mode': 'passive',
                            \'active_filetypes': [],
                            \'passive_filetypes': []}

"airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

"easy align
vnoremap <silent> <Enter> :EasyAlign<cr>

"FSwitch
nmap <Leader>a :FSHere<CR>

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
let g:todo_browser = "firefox"

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
      \ 'fallback': 'ag %s -l --nocolor --hidden -g ""'
      \ }

if has('python') || has('python3')
  "youcompleteme
  let g:ycm_register_as_syntastic_checker = 0
  let g:ycm_autoclose_preview_window_after_completion = 1
endif

if executable('ctags')
  "Tagbar
  nnoremap <Leader>t :TagbarToggle<CR>
  let g:tagbar_autoclose = 1
endif
