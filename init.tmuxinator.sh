#!/bin/sh

# https://github.com/tmuxinator/tmuxinator

# install tmuxinator
sudo gem install tmuxinator

# symlink
ln -s $HOME/dotfiles/.tmuxinator $HOME/.tmuxinator

# Add source
echo "source $HOME/.tmuxinator/tmuxinator.zsh" >> $HOME/.zshrc
source $HOME/.zshrc
