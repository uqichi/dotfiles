#!/bin/sh

APPS='
    google-chrome
    google-drive
    alfred
    iterm2
    dash
    dropbox
    flux
    evernote
    sequel-pro
    caffeine
    clipmenu
    appcleaner
    mysqlworkbench
    atom
    mou
    slack
    '

brew upgrade brew-cask && brew cask cleanup

for app in ${APPS}
do
  brew cask install ${app}
done
