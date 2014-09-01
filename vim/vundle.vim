filetype off
set rtp+=$VIMHOME/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Plugins here:
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-filebeagle'
Plugin 'junegunn/vim-easy-align'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'wellle/targets.vim'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

Plugin 'altercation/vim-colors-solarized'

"if has('python') || has('python3')
"endif

if executable('git')
    Plugin 'gregsexton/gitv'
    Plugin 'tpope/vim-fugitive'
endif

if executable('ctags')
    Plugin 'majutsushi/tagbar'
endif

if executable('ag')
    Plugin 'dyng/ctrlsf.vim'
endif

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
