#!/bin/sh

# jobs
sh _brew.sh
sh _brewcask.sh
sh _lnvim.sh

# symlink dotfiles
SRC_DIR=$(cd $(dirname $0) && pwd)
DOTFILES="gitconfig gitignore tmux.conf vimrc vrapperrc xvimrc zshrc.me"
for file in $DOTFILES
do
  ln -s ${SRC_DIR}/${file} ~/.${file}
done

# symlink dash app library
open /Applications/Dash.app && ln -sfn ${SRC_DIR}/dash/library.dash ~/Library/Application\ Support/Dash/library.dash

# copy tmuxinator dir
cp -r ${SRC_DIR}/tmuxinator ~/.tmuxinator
