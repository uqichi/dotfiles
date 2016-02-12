#!/bin/sh

## ----------------------------------------------------------------------
## brew apps
## ----------------------------------------------------------------------
#brew update && brew cleanup
BREWAPPS="tig git-now tmux reattach-to-user-namespace tree wget watch nkf nmap tcpflow coreutils w3m zsh caskroom/cask/brew-cask pwgen yajl cowsay imagemagic"
for app in $BREWAPPS
do
  brew install $app
done

echo "[ Complete brew apps installation. ]"


## ----------------------------------------------------------------------
## brewcask apps
## ----------------------------------------------------------------------
#brew upgrade brew-cask && brew cask cleanup
CASKAPPS="google-chrome alfred iterm2 dash dropbox vagrant virtualbox flux evernote sequel-pro caffeine clipmenu appcleaner kobito mysqlworkbench sublime-text mou hipchat"
for app in $CASKAPPS
do
  brew cask install $app
done

echo "[ Complete brewcask apps installation. ]"


## ----------------------------------------------------------------------
## configuration files
## ----------------------------------------------------------------------
DOTFILES="gitconfig gitignore tmux.conf vimrc vrapperrc xvimrc zshrc.custom"
for file in $DOTFILES
do
  ln -s ~/dotfiles/${file} ~/.${file}
done

ln -sfn ~/dotfiles/dash/library.dash ~/Library/Application\ Support/Dash/library.dash

cp -r ~/dotfiles/tmuxinator ~/.tmuxinator

echo "[ Complete copying configuration files provided. ]"
