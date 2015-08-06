"vim-go
let g:go_fmt_fail_silently = 1

" ctlrsf
nnoremap <Leader>st :CtrlSFToggle<CR>
nmap <Leader>sf <Plug>CtrlSFPrompt
vmap <Leader>sv <Plug>CtrlSFVwordExec
nmap <Leader>sw <Plug>CtrlSFCwordExec
nmap <Leader>sn <Plug>CtrlSFPwordExec

" tagbar
nnoremap <Leader>tb :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

" fzf
nnoremap <silent> <Leader>fo :FZF!<CR>
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
\   'source':  reverse(BufList()),
\   'sink':    function('BufOpen'),
\   'options': '+m',
\ })<CR>

" Search current buffer
function! BufGet()
  return map(getline(1, '$'), "printf('%5d  %s', v:key + 1, v:val)")
endfunction
function! LineOpen(e)
  execute 'normal! '. matchstr(a:e, '[0-9]\+'). 'G'
endfunction
nnoremap <silent> <Leader>lo :call fzf#run({
\   'source':  BufGet(),
\   'sink':    function('LineOpen'),
\   'options': '+m',
\ })<CR>

" Jump to tags
command! FZFTag if !empty(tagfiles()) | call fzf#run({
\   'source':  "sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq',
\   'sink':    'tag',
\   'options': '+m',
\ }) | else | echo 'No tags' | endif
nnoremap <silent> <Leader>to :FZFTag<CR>
