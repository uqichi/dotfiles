#!/bin/sh

# ============================================================
# brew
# ============================================================
#brew install git
brew install tig
brew install tmux
brew install tree
brew install w3m
brew install zsh
brew install caskroom/cask/brew-cask

# ============================================================
# brewcask
# ============================================================
#brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
brew cask install google-chrome
brew cask install alfred
brew cask install iterm2
brew cask install dash
brew cask install dropbox
brew cask install vagrant
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
brew cask install hipchat
brew cask install quicklook-json

# ============================================================
# zsh
# https://github.com/sorin-ionescu/prezto
# ============================================================
# Clone the repository:
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# Create a new Zsh configuration by copying the Zsh configuration files provided:
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
# Set Zsh as your default shell:
zsh
chsh -s /bin/zsh

# ============================================================
# vim
# https://github.com/altercation/vim-colors-solarized
# ============================================================
# Download pathogen
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Download solarized-color
cd $HOME/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# ============================================================
# tmuxinator
# https://github.com/tmuxinator/tmuxinator
# ============================================================
# Install
sudo gem install tmuxinator

# ------------------------------------------------------------

# create directories
mkdir -p $HOME/Develop/{git,eclipse/workspace}

# symlinks
ln -s $HOME/dotfiles/.zshrc.custom $HOME/.zshrc.custom
ln -s $HOME/dotfiles/.zshrc.alias $HOME/.zshrc.alias
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.tmuxinator $HOME/.tmuxinator
echo "source $HOME/dotfiles/.zshrc.custom" >> $HOME/.zshrc
source $HOME/.zshrc

cat $HOME/dotfiles/.zshenv >> $HOME/.zshenv
source $HOME/.zshenv
