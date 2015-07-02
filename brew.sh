#!/bin/sh

brew update && brew cleanup

# Add or Remove as you like
LIST="tig tmux reattach-to-user-namespace tree w3m zsh caskroom/cask/brew-cask"

for app in $LIST
do
  brew install $app
done
