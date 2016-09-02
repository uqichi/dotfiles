#!/bin/sh

# [2016-09-02 11:22:35] `brew list` ->
# bdw-gc coreutils direnv freetype gdbm gettext git git-now gnu-getopt gnu-typist heroku-toolbelt imagemagick jpeg libevent libpng libtiff libtool maven nkf nmap node nspr nvm openssl pcre readline reattach-to-user-namespace spidermonkey tcpflow tig tmux tomcat tree w3m watch xz yajl zsh

brew update && brew cleanup

APPS="tig git-now tmux reattach-to-user-namespace tree wget watch nkf nmap tcpflow coreutils w3m zsh nvm direnv spidermonkey"

for app in ${APPS}
do
  brew install ${app}
done

brew tap caskroom/cask
