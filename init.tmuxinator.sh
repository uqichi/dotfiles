#!/bin/sh

# https://github.com/tmuxinator/tmuxinator

# install
sudo gem install tmuxinator

# symlink
ln -s $HOME/dotfiles/.tmuxinator $HOME/.tmuxinator

# add source
echo "source $HOME/.tmuxinator/tmuxinator.zsh" >> $HOME/.zshrc

# update
source $HOME/.zshrc
