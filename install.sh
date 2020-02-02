#!/bin/sh

echo "Initialize git repos."
git clone git@github.com:ohmyzsh/ohmyzsh.git oh-my-zsh
git clone git@github.com:romkatv/powerlevel10k.git zsh_custom/themes/powerlevel10k

echo "Deploy zsh config."
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/p10k.zsh ~/.p10k.zsh

echo "Deploy vim config."
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "Deploy nvim config."
mkdir -p ~/.config
ln -s ~/dotfiles/nvim ~/.config/nvim

echo "Deploy tmux config."
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# echo "Deploy timewarrior config."
# mkdir -p ~/.timewarrior
# ln -s ~/dotfiles/timewarrior.cfg ~/.timewarrior/timewarrior.cfg

echo "Done."
