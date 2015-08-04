#!/bin/sh

## ----------------------------------------------------------------------
## brew
## ----------------------------------------------------------------------
brew update && brew cleanup

BREW_APPS="tig git-now tmux reattach-to-user-namespace tree wget coreutils w3m zsh caskroom/cask/brew-cask"

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
cp -r $HOME/dotfiles/tmuxinator $HOME/.tmuxinator
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.vrapperrc $HOME/.vrapperrc


## ----------------------------------------------------------------------
## directories
## ----------------------------------------------------------------------
mkdir -p $HOME/Develop/{git,eclipse/workspace,playground}
