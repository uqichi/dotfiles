#!/bin/sh

# symlink dotfiles
SRC_DIR=$(cd $(dirname $0) && pwd)
DOTFILES="gitconfig gitignore tmux.conf vimrc vrapperrc xvimrc zshrc.me"
echo $SRC_DIR
for file in $DOTFILES
do
  ln -sfn ${SRC_DIR}/${file} ~/.${file}
done

# symlink dash app library
open /Applications/Dash.app && ln -sfn ${SRC_DIR}/dash/library.dash ~/Library/Application\ Support/Dash/library.dash
