#!/bin/sh

# jobs
sh _brew.sh
sh _brewcask.sh
sh _lnvim.sh
sh _lndots.sh

# copy tmuxinator dir
cp -r ${SRC_DIR}/tmuxinator ~/.tmuxinator

# init dirs
mkdir -p ~/Develop/Projects
