" ctlrsf
nnoremap <Leader>so :CtrlSFOpen<CR>
nnoremap <Leader>sf :CtrlSF --ignore tags<Space>

" syntastic
nnoremap <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>sr :SyntasticReset<CR>
let g:synastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map = {'mode': 'passive',
            \'active_filetypes': [],
            \'passive_filetypes': []}

" tagbar
nnoremap <Leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" fzf
nnoremap <silent> <Leader>f :FZF<CR>
" List of buffers
function! BufList()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! BufOpen(e)
  execute 'buffer '. matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':      reverse(BufList()),
\   'sink':        function('BufOpen'),
\   'options':     '+m',
\   'tmux_height': '40%'
\ })<CR>

" Search current buffer
function! BufGet()
  return map(getline(1, '$'), "printf('%5d  %s', v:key + 1, v:val)")
endfunction

function! LineOpen(e)
  execute 'normal! '. matchstr(a:e, '[0-9]\+'). 'G'
endfunction

nnoremap <silent> ? :call fzf#run({
\   'source':      BufGet(),
\   'sink':        function('LineOpen'),
\   'options':     '+m',
\   'tmux_height': '40%'
\ })<CR>
