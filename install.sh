#!/bin/sh

echo "Initialize git submodules."
git submodule init
git submodule update

echo "Deploy zsh config."
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

echo "Deploy vim config."
rm -r ~/.vim
ln -s ~/dotfiles/vim ~/.vim
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "Deploy tmux config."
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# echo "Deploy timewarrior config."
# mkdir -p ~/.timewarrior
# ln -s ~/dotfiles/timewarrior.cfg ~/.timewarrior/timewarrior.cfg

echo "Done."
