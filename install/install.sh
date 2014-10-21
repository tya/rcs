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
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp $CFG/vim/vimrc.local ~/vimrc.local

ln -sf $CFG/configs/bashrc ~/.bashrc
ln -sf $CFG/configs/bash_profile ~/.bash_profile
cp $CFG/configs/bashrc.local ~/bashrc.local
ln -sf $CFG/configs/vimperatorrc ~/.vimperatorrc
ln -sf $CFG/configs/pentadactylrc ~/.pentadactylrc
cp $CFG/configs/vimperatorrc.local ~/vimperatorrc.local
ln -sf $CFG/configs/gitconfig ~/.gitconfig
cp $CFG/configs/gitconfig.local ~/gitconfig.local
rm -rf ~/.fonts
ln -sf $CFG/fonts ~/.fonts
ln -sf $CFG/configs/Xresources ~/.Xresources
ln -sf $CFG/configs/tmux.conf ~/.tmux.conf

# if [[ $platform == 'linux' ]]; then
ln -sf $CFG/configs/slate ~/.slate

mkdir -p ~/projects/notes
mkdir -p ~/sandbox/repos
source ~/.bashrc
