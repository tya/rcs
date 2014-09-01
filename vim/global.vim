"Syntax related stuff
syntax on
set autoindent
set ofu=syntaxcomplete#Complete
set nocompatible
set modelines=1

"make things display better
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
set ttyfast
set ruler
set backspace=indent,eol,start
set nrformats-=octal
set display+=lastline

"set numbering
set relativenumber
set number

"only have number for active window
"au WinEnter * :setlocal number
"au WinEnter * :setlocal relativenumber
"au WinLeave * :setlocal nonumber
"au WinLeave * :setlocal norelativenumber

set wildignore+=*/.hg/*,*/.git/*,*/.svn/*
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.swp,*bak,*.pyc,*.class
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set synmaxcol=800
set title
set nobackup
set noswapfile
set complete-=i
set completeopt=menu,menuone,longest,preview
set switchbuf=useopen,usetab
set winaltkeys=no
set autoread
set fileformats+=mac

"turn off annoying visual and audible bell
set noeb vb t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

"sudo w
cmap w!! w !sudo tee % >/dev/null

"change the leader key
let mapleader=','

"tame searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"clear all searches with ,space
nnoremap <Leader><space> :noh<cr>

"pasting large amount of text no need to autoindent
set pastetoggle=<Leader>tp
set mouse=a

"handle long lines correctly
set wrap
set textwidth=79

" autocomment
set formatoptions=qn1
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if v:version >= 703
    set colorcolumn=80
endif

"show hidden characters
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
    if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
        let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
    endif
endif

set iskeyword+=_,$,@,%,#

"column movement
nnoremap j gj
nnoremap k gk

"reselect the text that was pasted so I can perform commands
nnoremap <Leader>p V`]

"open up vimrc files in a new vertical window
nnoremap <Leader>ev <C-w><C-v><C-l>:e $VIMHOME/vundle.vim <CR>
nnoremap <Leader>eg <C-w><C-v><C-l>:e $VIMHOME/global.vim <CR>
nnoremap <Leader>ep <C-w><C-v><C-l>:e $VIMHOME/plugins.vim <CR>
if filereadable(expand("~/vimrc.local"))
    nnoremap <Leader>el <C-w><C-v><C-l>:e ~/vimrc.local<CR>
endif
if filereadable(expand("~/.bashrc"))
    nnoremap <Leader>eb <C-w><C-v><C-l>:e ~/.bashrc <CR>
endif
if filereadable(expand("~/.tmux.conf"))
    nnoremap <Leader>et <C-w><C-v><C-l>:e ~/.tmux.conf <CR>
endif

"source and reloads the saved
nnoremap <Leader>r :source $MYVIMRC <CR>

"working with split windows
nnoremap <Leader>l <C-w>v<C-w>l
nnoremap <Leader>j <C-w>s<C-w>j

"split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Command history
cnoremap <C-j> <down>
cnoremap <C-k> <up>

"Keep search matches in the middle of the window.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

"Also center the screen when jumping through the change list
nnoremap g; g;zz
nnoremap g, g,zz

"Aesthetics
set background=dark
"set background=light
colorscheme solarized
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=b
    set guioptions-=B
    set guifont=Inconsolata-g\ 11
else
    set t_Co=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    let g:solarized_termcolors=256
endif

"Resize splits when the window is resized
au VimResized * exe "normal! \<C-w>="

"remap visual block selection"
nnoremap <leader>v <C-V>

"make sure status line is always shown as the second last line / also requires for powerline
set laststatus=2

"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Make y behave like other capitals
map Y y$

"remove trailing white spaces and ^Ms
autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//

"automatically close preview window
 autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
 autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

nnoremap <leader>w :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>

"status line
"set laststatus=2
"set statusline=
"set statusline +=%1*\ %n\ %*                          " buffer number
"set statusline +=%3*\ %<%F%*                          " full path
"set statusline +=%1*\ %m%*                            " modified flag
"set statusline +=%1*\ %r%*                            " read only flag"
"set statusline +=%2*\ %{&ff}%*                        " file format
"set statusline +=%2*\ %y%*                            " file type
"set statusline +=%2*\ %{''.(&fenc!=''?&fenc:&enc).''} " encoding
"set statusline +=%#warningmsg#
"set statusline +=%3*\ %{SyntasticStatuslineFlag()}    " syntastic
"set statusline +=%*
"set statusline +=%2*%=%5l%*                           " current line
"set statusline +=%2*/%L%*                             " total lines
"set statusline +=%2*%4v\ %*                           " virtual column number

"hi User1 ctermbg=black ctermfg=100    guibg=black guifg=#878700
"hi User2 ctermbg=black ctermfg=green  guibg=black guifg=green
"hi User3 ctermbg=black ctermfg=166    guibg=black guifg=#d75f00

"fix slight delay after pressing ESC then o
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
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
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

"maximizing current buffer by open it in aother tab
nmap <Leader>te :tabedit %<CR>
nmap <Leader>tc :tabclose<CR>

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

nmap <Leader>deb :call DeleteEmptyBuffers()<CR>
nnoremap <Leader>tf <C-]>
nnoremap <Leader>tb <C-t>
