"easytags
let g:easytags_async = 1
set tags=./tags
let g:easytags_dynamic_files = 2
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
nnoremap <Leader>ut :UpdateTags<CR>
nnoremap <Leader>ct :UpdateTags -R <Space>

"supertab
let g:SuperTabDefaultCompletionType = "context"

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
    nnoremap <Leader>ff :CtrlSF --ignore tags<Space>
endif

"syntastic
nnoremap <Leader>sc :SyntasticCheck<CR>:Errors<CR>:lclose<CR>
nnoremap <Leader>sr :SyntasticReset<CR>
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

"delmimitMate
imap <C-f> <Plug>delimitMateJumpMany

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

if executable('ctags')
    "Tagbar
    nnoremap <Leader>ta :TagbarToggle<CR>
    let g:tagbar_autoclose = 1
endif
