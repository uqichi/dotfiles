#!/bin/sh

# Install tmuxinator
sudo gem install tmuxinator

# Copy config
cp -r $HOME/dotfiles/tmuxinator/tmuxinator.zsh $HOME/.tmuxinator
