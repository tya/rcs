" Syntax related stuff
syntax on
set autoindent
set ofu=syntaxcomplete#Complete
set nocompatible
set modelines=1

" Make things display better
set encoding=utf-8
if !&scrolloff
    set scrolloff=1
endif
if !&sidescrolloff
    set sidescrolloff=5
endif
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set cursorline
" set ttyfast
set ruler
set backspace=indent,eol,start
set nrformats-=octal
set display+=lastline

" tab stuff
set shiftround
set smarttab
set expandtab

" set numbering
" set relativenumber
set number

" only have number for active window
" au WinEnter * :setlocal number
" au WinEnter * :setlocal relativenumber
" au WinLeave * :setlocal nonumber
" au WinLeave * :setlocal norelativenumber

set wildignore+=*/.hg/*,*/.git/*,*/.svn/*
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.swp,*bak,*.pyc,*.class
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set synmaxcol=120
set title
set nobackup
set noswapfile
set complete-=i
set completeopt=menu,menuone,longest,preview
set switchbuf=useopen,usetab
set winaltkeys=no
set autoread
set fileformats+=mac
set foldmethod=indent
set nofoldenable

" turn off annoying visual and audible bell
set noeb vb t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" sudo w
cmap w!! w !sudo tee % >/dev/null

" change the leader key
let mapleader=','
noremap \ ,

" tame searching/moving
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
" set incsearch
set showmatch
set hlsearch

" clear all searches with ,space
" nnoremap <Leader><space> :noh<cr>

" pasting large amount of text no need to autoindent
set pastetoggle=<Leader>pt
set mouse=a

" handle long lines correctly
set nowrap
set textwidth=79

" autocomment
set formatoptions=qn1
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if v:version >= 703
    set colorcolumn=80
endif

" show hidden characters
set list
let &showbreak='+++ '
if &listchars ==# 'eol:$'
    set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
endif

set iskeyword+=_,$,@,%,#

" column movement
nnoremap j gj
nnoremap k gk

" reselect the text that was pasted so I can perform commands
nnoremap <Leader>vr V`]

" reload vim configs
nnoremap <Leader>rc :source $MYVIMRC <CR>

" working with split windows
nnoremap <Leader>\ <C-w>v<C-w>l
nnoremap <Leader>- <C-w>s<C-w>j

" split navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Command history
cnoremap <C-j> <down>
cnoremap <C-k> <up>

" Open file under cursor in new tab
" nnoremap gF <C-w>gf

" Keep search matches in the middle of the window.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

" Also center the screen when jumping through the change list
nnoremap g; g;zz
nnoremap g, g,zz

" Aesthetics
" set background=dark
set background=light
colorscheme solarized
highlight clear SignColumn

" Resize splits when the window is resized
" au VimResized * exe "normal! \<C-w>="
" set noea
nnoremap <Leader>= <C-w>=
" nnoremap <C-u> :resize +1<CR>
" nnoremap <C-d> :resize -1<CR>
" nnoremap + :vertical resize +1<CR>
" nnoremap - :vertical resize -1<CR>

" remap visual block selection"
nnoremap <Leader>vb <C-V>

" make sure status line is always shown as the second last line / also requires for powerline
set laststatus=2

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Make y behave like other capitals
map Y y$

" remove trailing white spaces and ^Ms
autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

" automatically close preview window
 autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
 autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

nnoremap <Leader>wl :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>
nnoremap <Leader>wm :silent !open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>

" status line
" set laststatus=2
" set statusline=
" set statusline +=%1*\ %n\ %*                          " buffer number
" set statusline +=%3*\ %<%F%*                          " full path
" set statusline +=%1*\ %m%*                            " modified flag
" set statusline +=%1*\ %r%*                            " read only flag
" set statusline +=%2*\ %{&ff}%*                        " file format
" set statusline +=%2*\ %y%*                            " file type
" set statusline +=%2*\ %{''.(&fenc!=''?&fenc:&enc).''} " encoding
" set statusline +=%#warningmsg#
" set statusline +=%3*\ %{SyntasticStatuslineFlag()}    " syntastic
" set statusline +=%*
" set statusline +=%2*%=%5l%*                           " current line
" set statusline +=%2*/%L%*                             " total lines
" set statusline +=%2*%4v\ %*                           " virtual column number

" hi User1 ctermbg=black ctermfg=100    guibg=black guifg=#878700
" hi User2 ctermbg=black ctermfg=green  guibg=black guifg=green
" hi User3 ctermbg=black ctermfg=166    guibg=black guifg=#d75f00

" fix slight delay after pressing ESC then o
set timeout timeoutlen=1000 ttimeoutlen=50
set undolevels=1000

if &history < 1000
    set history=1000
endif
if &tabpagemax < 50
    set tabpagemax=50
endif
if !empty(&viminfo)
    set viminfo^=!
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
    set t_Co=16
endif

" ctags look up order
set tags=./tags;

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>

" repeat visual command on a selection
vnoremap . :normal .<CR>

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    " Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    " Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    " Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    " Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    " Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

let g:window_swap = 0
function! WindowSwapToggle()
    if g:window_swap
        call DoWindowSwap()
        let g:window_swap = 0
    else
        call MarkWindowSwap()
        let g:window_swap = 1
    endif
endfunction
nnoremap <Space> :call WindowSwapToggle()<CR>

" maximizing current buffer by open it in another tab
nmap <Leader>zi :tabedit %<CR>

function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction

nmap <Leader>de :call DeleteEmptyBuffers()<CR>

" get rid of that annoying Ex
map Q @@
map q: :q

" unplace all signs
map <Leader>us :sign unplace *<CR>

" Work around for wrong terminfo in nvim
" and remap to escape when in terminal mode
if has('nvim')
    nmap <BS> <C-W>h
    tnoremap <Esc> <C-\><C-n>
endif

" Yank full path of current buffer
nnoremap <silent> <leader>yp :let @+ = expand("%:p")<CR>
