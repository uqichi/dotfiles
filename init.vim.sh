#!/bin/sh

# download pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download solarized-color
cd $HOME/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# symlink
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
