let $VIMHOME = $HOME."/.vim"
source $VIMHOME/vundle.vim
source $VIMHOME/global.vim
source $VIMHOME/plugins.vim
if filereadable(expand("~/vimrc.local"))
    source ~/vimrc.local
endif

