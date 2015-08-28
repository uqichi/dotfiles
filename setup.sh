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
DOTFILES="gitconfig gitignore tmux.conf vimrc vrapperrc zshrc.custom"
for file in $DOTFILES
do
  ln -s ~/dotfiles/${file} ~/.${file}
done

cp -r ~/dotfiles/tmuxinator ~/.tmuxinator
