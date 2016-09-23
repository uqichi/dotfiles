#!/bin/sh

# [2016-09-02 13:37:50] `brew cask list` ->
# alfred appcleaner caffeine clipmenu dropbox evernote flux google-chrome google-drive iterm2 kobito (!) mou mysqlworkbench quicklook-json sequel-pro skype sublime-text virtualbox

brew upgrade brew-cask && brew cask cleanup

APPS="google-chrome google-drive alfred iterm2 dash dropbox flux evernote sequel-pro caffeine clipmenu appcleaner mysqlworkbench atom mou slack"

for app in ${APPS}
do
  brew cask install ${app}
done
