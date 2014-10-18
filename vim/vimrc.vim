let $VIMHOME = $HOME."/.vim"
let $CONFIGHOME = $HOME."/rcs"
source $VIMHOME/global.vim
source $VIMHOME/plugins.vim
if filereadable(expand("~/vimrc.local"))
    source ~/vimrc.local
endif

