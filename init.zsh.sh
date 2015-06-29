#!/bin/sh

# Prezto installation
# https://github.com/sorin-ionescu/prezto

# Clone the repository:
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create a new Zsh configuration by copying the Zsh configuration files provided:
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Set Zsh as your default shell:
zsh
chsh -s /bin/zsh

# Add source
echo "source $HOME/dotfiles/.zshrc" >> $HOME/.zshrc
source $HOME/.zshrc
