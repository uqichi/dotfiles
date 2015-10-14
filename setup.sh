#!/bin/sh

## ----------------------------------------------------------------------
## brew
## ----------------------------------------------------------------------
brew update && brew cleanup

BREWAPPS="tig git-now tmux reattach-to-user-namespace tree wget watch coreutils w3m zsh caskroom/cask/brew-cask pwgen yajl cowsay gnu-typist"
for app in $BREWAPPS
do
  brew install $app
done


## ----------------------------------------------------------------------
## brewcask
## ----------------------------------------------------------------------
brew upgrade brew-cask && brew cask cleanup

CASKAPPS="google-chrome alfred iterm2 dash dropbox vagrant virtualbox flux evernote sequel-pro clipmenu appcleaner kobito mysqlworkbench sublime-text mou hipchat"
for app in $CASKAPPS
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

ln -sfn ~/dotfiles/dash/library.dash ~/Library/Application\ Support/Dash/library.dash

cp -r ~/dotfiles/tmuxinator ~/.tmuxinator
