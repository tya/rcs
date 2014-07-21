#! /bin/bash
CFG=~/rcs
rm -rf ~/vim
mkdir -p ~/vim
ln -sf ~/vim ~/.vim
ln -sf $CFG/vim/vimrc.vim ~/.vimrc
ln -sf $CFG/vim/*.vim ~/vim/.
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim "+BundleInstall" "+quitall"
cp $CFG/vim/vimrc.local ~/vimrc.local

ln -sf $CFG/configs/bashrc ~/.bashrc
ln -sf $CFG/configs/bash_profile ~/.bash_profile
cp $CFG/configs/bashrc.local ~/bashrc.local
ln -sf $CFG/configs/vimperatorrc ~/.vimperatorrc
ln -sf $CFG/configs/pentadactylrc ~/.pentadactylrc
ln -sf $CFG/configs/gitconfig ~/.gitconfig
cp $CFG/configs/gitconfig.local ~/gitconfig.local
ln -sf $CFG/git_template ~/.git_template
rm -rf ~/.fonts
ln -sf $CFG/fonts ~/.fonts
ln -sf ~/vim/bundle/dircolors-solarized/dircolors.256dark ~/.dir_colors
ln -sf $CFG/configs/tmux.conf ~/.tmux.conf
ln -sf $CFG/configs/Xresources ~/.Xresources

mkdir -p ~/projects/todo
mkdir -p ~/sandbox
source ~/.bashrc
