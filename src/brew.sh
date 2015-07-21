#!/bin/sh

brew update && brew cleanup

# Add or Remove as you like
APPS="tig tmux reattach-to-user-namespace tree wget w3m zsh caskroom/cask/brew-cask"

for app in $APPS
do
  brew install $app
done
