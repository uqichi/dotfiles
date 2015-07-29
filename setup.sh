#!/bin/sh

# Setup
./jobs/brew.sh
./jobs/brewcask.sh
./jobs/vim.sh
./jobs/tmux.sh
./jobs/tmuxinator.sh

# Prepare directories
mkdir -p $HOME/Develop/{git,eclipse/workspace,playground}
