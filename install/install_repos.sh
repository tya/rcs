#! /bin/bash
REP=~/sandbox/repos
CURRENT=`pwd`
cd $REP
git clone git@github.com:seebi/dircolors-solarized.git
git clone git@github.com:seebi/tmux-colors-solarized.git
git clone git@github.com:altercation/solarized.git
git clone git@github.com:adobe-fonts/source-code-pro.git

ln -sf $REP/dircolors-solarized/dircolors.256dark ~/.dir_colors
cd $CURRENT



