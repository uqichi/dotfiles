#!/bin/sh

# Setup
./src/brew.sh
./src/brewcask.sh
./src/vim.sh
./src/tmux.sh
./src/tmuxinator.sh

# Prepare directories
mkdir -p $HOME/Develop/{git,eclipse/workspace,playground}
