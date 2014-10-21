let $CONFIGHOME = $HOME."/rcs"
source $CONFIGHOME/vim/manager.vim
source $CONFIGHOME/vim/common.vim
source $CONFIGHOME/vim/unix.vim
source $CONFIGHOME/vim/plugins.vim
if filereadable(expand("~/vimrc.local"))
    source ~/vimrc.local
endif

