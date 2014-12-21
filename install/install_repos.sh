#! /bin/bash
REP=~/sandbox/repos
CURRENT=`pwd`
cd $REP
git clone https://github.com/seebi/dircolors-solarized.git
git clone https://github.com/seebi/tmux-colors-solarized.git
git clone https://github.com/altercation/solarized.git
git clone https://github.com/creaktive/rainbarf.git

ln -sf $REP/dircolors-solarized/dircolors.256dark ~/.dir_colors
cd $CURRENT



