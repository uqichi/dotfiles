#!/bin/sh

# excecute init scripts
. ./init.brew.sh
. ./init.brewcask.sh
. ./init.zsh.sh
. ./init.vim.sh
. ./init.tmuxinator.sh

# create directories
mkdir -p $HOME/Develop/{git,eclipse/workspace}

# symlinks
ln -s $HOME/dotfiles/.zshrc.custom $HOME/.zshrc.custom
ln -s $HOME/dotfiles/.zshrc.alias $HOME/.zshrc.alias
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.tmuxinator $HOME/.tmuxinator
echo "source $HOME/dotfiles/.zshrc.custom" >> $HOME/.zshrc
source $HOME/.zshrc

cat $HOME/dotfiles/.zshenv >> $HOME/.zshenv
source $HOME/.zshenv
