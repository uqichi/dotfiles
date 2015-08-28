#!/bin/sh

## ----------------------------------------------------------------------
## brew
## ----------------------------------------------------------------------
brew update && brew cleanup

BREW_APPS="tig git-now tmux reattach-to-user-namespace tree wget watch coreutils w3m zsh caskroom/cask/brew-cask pwgen cowsay figlet fortune"

for app in $BREW_APPS
do
  brew install $app
done


## ----------------------------------------------------------------------
## brewcask
## ----------------------------------------------------------------------
brew upgrade brew-cask && brew cask cleanup

CASK_APPS="google-chrome alfred iterm2 dash dropbox vagrant virtualbox flux evernote sequel-pro clipmenu appcleaner kobito mysqlworkbench sublime-text mou hipchat"

for app in $CASK_APPS
do
  brew cask install $app
done


## ----------------------------------------------------------------------
## configurations
## ----------------------------------------------------------------------
cp -r ~/dotfiles/tmuxinator ~/.tmuxinator
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vrapperrc ~/.vrapperrc
