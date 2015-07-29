#!/bin/sh

brew upgrade brew-cask && brew cask cleanup

APPS="google-chrome alfred iterm2 dash dropbox vagrant virtualbox flux evernote sequel-pro clipmenu appcleaner kobito mysqlworkbench sublime-text mou hipchat"

for app in $APPS
do
  brew cask install $app
done
