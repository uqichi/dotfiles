#!/bin/sh

# https://github.com/tmuxinator/tmuxinator

# install
sudo gem install tmuxinator

# symlink
ln -s $HOME/dotfiles/.tmuxinator $HOME/.tmuxinator

# update
source $HOME/.zshrc
