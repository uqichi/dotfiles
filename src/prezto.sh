#!/bin/sh

# Launch Zsh
zsh

# Copy the forked repository
ln -s $HOME/dotfiles/prezto $HOME/.zprezto

# Create a new Zsh configuration by copying the Zsh configuration files provided
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Set Zsh as your default shell
chsh -s /bin/zsh
