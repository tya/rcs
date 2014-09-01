#! /bin/bash
REP=~/sandbox/repos
cd $REP
git clone https://github.com/seebi/dircolors-solarized.git
git clone https://github.com/seebi/tmux-colors-solarized.git
git clone https://github.com/altercation/solarized.git

ln -sf $REP/dircolors-solarized/dircolors.256dark ~/.dir_colors



