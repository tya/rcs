" ctlrsf
nnoremap <Leader>so :CtrlSFOpen<CR>
nnoremap <Leader>sf :CtrlSF --ignore tags<Space>

" gsearch
let g:gsearch_ctrlsf_command = 'CtrlSF --ignore tags'
map g/ <Plug>(operator-ctrlsf)

" dispatch
nnoremap <Leader>dp :Dispatch<Space>
nnoremap <Leader>dq :Dispatch!<Space>

" tagbar
nnoremap <Leader>tb :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tabgar_autoclose = 1

" fzf
nnoremap <silent> <Leader>fo :FZF<CR>
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
nnoremap <silent> <Leader>bo :call fzf#run({
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
nnoremap <silent> <Leader>lo :call fzf#run({
\   'source':      BufGet(),
\   'sink':        function('LineOpen'),
\   'options':     '+m',
\   'tmux_height': '40%'
\ })<CR>

" Jump to tags
command! FZFTag if !empty(tagfiles()) | call fzf#run({
\   'source':      "sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq',
\   'sink':        'tag',
\   'options':     '+m',
\   'tmux_height': '40%'
\ }) | else | echo 'No tags' | endif
nnoremap <silent> <Leader>to :FZFTag<CR>
