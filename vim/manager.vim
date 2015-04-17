if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'benekastah/neomake'
Plug 'dyng/ctrlsf.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'kana/vim-operator-user'
Plug 'majutsushi/tagbar'
Plug 'rgrinberg/vim-operator-gsearch'
Plug 'tpope/vim-dispatch'
source $CONFIGHOME/vim/managercommon.vim
call plug#end()


