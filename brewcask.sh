#!/bin/sh

brew upgrade brew-cask && brew cask cleanup

# Add or Remove as you like
LIST="google-chrome alfred iterm2 dash dropbox vagrant virtualbox flux evernote sequel-pro clipmenu appcleaner kobito mysqlworkbench sublime-text mou hipchat"

for app in $LIST
do
  brew cask install $app
done
