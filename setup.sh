#!/bin/sh

# excecute init scripts
. ./init.brew.sh
. ./init.brewcask.sh
. ./init.zsh.sh
. ./init.vim.sh
. ./init.tmuxinator.sh

# create directories
mkdir -p $HOME/Develop/{git,eclipse/workspace}
