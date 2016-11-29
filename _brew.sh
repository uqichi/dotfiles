#!/bin/sh

# [2016-11-29 11:22:27] `brew list` ->
# ansible autoconf automake bdw-gc cmake coreutils direnv freetype gdbm gettext ghq git git-now glide gmp gnu-getopt gnu-typist heroku-toolbelt hub imagemagick jemalloc jpeg libevent libpng libtermkey libtiff libtool libuv libvterm libyaml lua maven msgpack neovim nettle nkf nmap nspr openssl pcre peco pkg-config python3 readline reattach-to-user-namespace spidermonkey sqlite stoken tcpflow the_silver_searcher tig tmux tomcat tree unibilium vim w3m watch xz yajl zsh

brew update && brew cleanup

APPS="vim tig git-now tmux reattach-to-user-namespace tree wget watch nkf nmap tcpflow coreutils w3m zsh direnv spidermonkey go glide the_silver_searcher ansible jq peco ghq hub python3 neovim/neovim/neovim"

for app in ${APPS}
do
  brew install ${app}
done

brew tap caskroom/cask
