#!/bin/sh

# homebrew installation
# http://brew.sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# excecute init scripts
. ./init.brew.sh
. ./init.brewcask.sh
. ./init.zsh.sh
. ./init.vim.sh
. ./init.tmuxinator.sh

# create directories
mkdir -p $HOME/Develop/{git,eclipse/workspace}
