#!/bin/sh

# Install tmuxinator
sudo gem install tmuxinator

# Copy config
cp -r $HOME/dotfiles/tmuxinator $HOME/.tmuxinator
