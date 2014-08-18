filetype off
set rtp+=$VIMHOME/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles here:
Bundle 'Raimondi/delimitMate'
Bundle 'Yggdroot/indentLine'
Bundle 'bling/vim-airline'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/gitv'
Bundle 'jeetsukumaran/vim-filebeagle'
Bundle 'junegunn/vim-easy-align'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/syntastic'
Bundle 'sheerun/vim-polyglot'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'

Bundle 'altercation/vim-colors-solarized'
Bundle 'seebi/dircolors-solarized'
Bundle 'seebi/tmux-colors-solarized'
Bundle 'solarized/xresources'
Bundle 'solarized-maint/iterm2-solarized'

"if has('python') || has('python3')
"endif

if executable('git')
    Bundle 'tpope/vim-fugitive'
endif

if executable('ctags')
    Bundle 'majutsushi/tagbar'
endif

if executable('ag')
    Bundle 'dyng/ctrlsf.vim'
endif


filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
