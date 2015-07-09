#!/bin/sh

# Setup each
./src/brew.sh
./src/brewcask.sh
./src/vim.sh
./src/tmux.sh
./src/tmuxinator.sh
./src/prezto.sh

# Create dir
mkdir -p $HOME/Develop/{git,eclipse/workspace}
