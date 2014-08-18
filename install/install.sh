#! /bin/bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
fi

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
rm -rf ~/.fonts
ln -sf $CFG/fonts ~/.fonts
ln -sf ~/vim/bundle/dircolors-solarized/dircolors.256dark ~/.dir_colors
ln -sf $CFG/configs/Xresources ~/.Xresources

if [[ $platform == 'linux' ]]; then
    ln -sf $CFG/configs/tmux.conf ~/.tmux.conf
else
    ln -sf $CFG/configs/mac_tmux.conf ~/.tmux.conf
fi

ln -sf $CFG/configs/slate ~/.slate

mkdir -p ~/projects/todo
mkdir -p ~/sandbox
source ~/.bashrc
