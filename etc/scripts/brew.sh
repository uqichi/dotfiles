#!/bin/sh

APPS='
    caskroom/cask/brew-cask
    vim
    tig
    git-now
    tmux
    reattach-to-user-namespace
    tree
    wget
    watch
    nkf
    nmap
    tcpflow
    coreutils
    w3m
    zsh
    direnv
    spidermonkey
    go
    glide
    the_silver_searcher
    ansible
    jq
    peco
    ghq
    hub
    python3
    neovim/neovim/neovim
    mas
    '

brew update && brew cleanup

function check_already_installed () {
    app=$1
    brew ls ${app} > /dev/null
    if [ $? == 0 ]; then
        echo "brew installed"
        return 0
    fi
    if [ -n `brew tap | grep ${app}` ]; then
        echo "brew tapped"
        return 0
    fi
    return 1
}

for app in ${APPS}
do
    #echo ${app}
    #res=`check_already_installed ${app}`
    #echo "res $res"
    #if [ $res -gt 0 ]; then
    #    echo "res: $res, error..."
    #fi

    brew install ${app}
done

