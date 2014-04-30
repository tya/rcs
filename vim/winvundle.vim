filetype off
set rtp+=$VIMHOME/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles here:
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'dag/vim2hs'
Bundle 'gregsexton/gitv'
Bundle 'junegunn/vim-easy-align'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'mivok/vimtodo'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vinegar'
Bundle 'vim-scripts/LargeFile'

Bundle 'altercation/vim-colors-solarized'

if executable('git')
    Bundle 'tpope/vim-fugitive'
endif

filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
