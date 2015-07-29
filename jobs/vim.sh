#!/bin/sh

# Download pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Download solarized-color
cd $HOME/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# Copy config
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.vrapperrc $HOME/.vrapperrc
