#!/bin/sh

# neovim
mkdir -p ${HOME}/.vim
ln -snfv ${HOME}/.vim ${HOME}/.config/nvim/
ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim

# dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/deinvim_installer.sh
sh /tmp/deinvim_installer.sh ${HOME}/.vim/bundle

# deoplete.nvim
pip3 install --upgrade neovim

# deoplete-go
go get -u github.com/nsf/gocode
