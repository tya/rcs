#! /bin/bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
fi

RCS=~/rcs
rm -rf ~/vim
mkdir -p ~/vim
ln -sf ~/vim ~/.vim
ln -sf ~/vim ~/.nvim
ln -sf $RCS/vim/vimrc.vim ~/.vimrc
ln -sf $RCS/vim/vimrc.vim ~/.nvimrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp $RCS/vim/vimrc.local ~/vimrc.local

ln -sf $RCS/configs/bashrc ~/.bashrc
ln -sf $RCS/configs/bash_profile ~/.bash_profile
cp $RCS/configs/bashrc.local ~/bashrc.local

ln -sf $RCS/configs/vimperatorrc ~/.vimperatorrc
ln -sf $RCS/configs/pentadactylrc ~/.pentadactylrc
cp $RCS/configs/vimperatorrc.local ~/vimperatorrc.local

ln -sf $RCS/configs/gitconfig ~/.gitconfig
cp $RCS/configs/gitconfig.local ~/gitconfig.local
ln -sf $RCS/configs/agignore ~/.agignore

rm -rf ~/.fonts
ln -sf $RCS/fonts ~/.fonts

ln -sf $RCS/configs/Xresources ~/.Xresources

ln -sf $RCS/configs/tmux.conf ~/.tmux.conf

ln -sf $RCS/configs/ctags ~/.ctags

# if [[ $platform == 'linux' ]]; then
ln -sf $RCS/configs/slate ~/.slate

mkdir -p ~/projects/notes
mkdir -p ~/sandbox/repos
source ~/.bashrc
