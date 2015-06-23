#!/bin/sh

## install homebrew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew doctor

## brew install
brew install git
brew install tmux
brew install tree
brew install w3m
brew install zsh
brew install caskroom/cask/brew-cask

## brew cask install
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install dropbox
brew cask install virtualbox
brew cask install flux
brew cask install evernote
brew cask install sequel-pro
brew cask install clipmenu
brew cask install appcleaner
brew cask install kobito
brew cask install mysqlworkbench
brew cask install sublime-text
brew cask install mou
brew cask install quicklook-json

## install manually from App Store below
# - Magnet
