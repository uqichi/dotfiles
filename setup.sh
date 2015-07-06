#!/bin/sh

# Init
./brew.sh
./brewcask.sh
./vim.sh
./tmux.sh
./tmuxinator.sh
./prezto.sh

# Create dir
mkdir -p $HOME/Develop/{git,eclipse/workspace}
