#!/bin/sh


# homebrew installation
# http://brew.sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

. ./init.brew.sh
. ./init.brewcask.sh
. ./init.zsh.sh
. ./init.vim.sh
. ./init.tmuxinator.sh
