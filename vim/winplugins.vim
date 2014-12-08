" Ctrlp
let g:ctrlp_switch_buffer = 'et'
nnoremap <Leader>bo :CtrlPBuffer<CR>
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
