" Filebeagle
let g:filebeagle_suppress_keymaps = 1
map <silent> <Leader>d <Plug>FileBeagleOpenCurrentWorkingDir
map <silent> - <Plug>FileBeagleOpenCurrentBufferDir

" unite
call unite#custom#profile('default', 'context', {
\ 'start_insert': 1,
\ 'winheight': 10,
\ 'direction': 'botright',
\ })
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> <Leader>f :<C-u>Unite file_rec/async:!<CR>
nnoremap <silent> <Leader>g :<C-u>Unite file_rec/git:--cached:--others:--exclude-standard<CR>

let g:unite_source_history_yank_enable = 1
nnoremap <silent> <Leader>y :<C-u>Unite history/yank<CR>

nnoremap <silent> <Leader>b :<C-u>Unite buffer<CR>

nnoremap <silent> / :<C-u>Unite -buffer-name=search line:forward<CR>

" easytags
let g:easytags_async = 1
set tags=./tags
let g:easytags_dynamic_files = 2
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
nnoremap <Leader>ut :UpdateTags<CR>
nnoremap <Leader>ct :UpdateTags -R <Space>

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

" ctlrsf
nnoremap <Leader>fo :CtrlSFOpen<CR>
nnoremap <Leader>ff :CtrlSF --ignore tags<Space>

" syntastic
nnoremap <Leader>sc :SyntasticCheck<CR>:Errors<CR>:lclose<CR>
nnoremap <Leader>sr :SyntasticReset<CR>
let g:synastic_auto_loc_list = 1
let g:syntastic_mode_map = {'mode': 'passive',
            \'active_filetypes': [],
            \'passive_filetypes': []}

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'solarized'

" easy align
vnoremap <silent> <Enter> :EasyAlign<cr>

"delmimitMate
imap <C-f> <Plug>delimitMateJumpMany

" Tagbar
nnoremap <Leader>ta :TagbarToggle<CR>
let g:tagbar_autoclose = 1
