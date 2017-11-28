#!/bin/sh

# dein.vim
INSTALLATION_DIRECTORY=${HOME}/.cache/dein
mkdir -p ${INSTALLATION_DIRECTORY}
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/deinvim_installer.sh
sh /tmp/deinvim_installer.sh ${INSTALLATION_DIRECTORY}

# deoplete.nvim
pip3 install --upgrade neovim

# deoplete-go
go get -u github.com/nsf/gocode
