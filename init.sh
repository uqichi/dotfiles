#!/bin/sh

## install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

## setup iterm2
#  1. Create a new profile
#  2. Load Preset from iterm/custom-solarized-dark.itermcolors
#  3. Set it as default profile

## exec shells
sh ./brew/brew.sh
sh ./brew/brewcask.sh
sh ./zsh/zsh.sh
sh ./vim/vim.sh
