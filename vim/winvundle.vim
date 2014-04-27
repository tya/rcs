filetype off
set rtp+=$VIMHOME/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles here:
Bundle 'mivok/vimtodo'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-unimpaired'
Bundle 'Raimondi/delimitMate'
Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
