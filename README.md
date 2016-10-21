dotfiles
==================================================
my dotfiles.


Setup
--------------------------------------------------


### Homebrew
1. Install the `Command Line Tools`. The standalone package can be obtained from <https://developer.apple.com/downloads> or it can be installed via Xcode's preferences.
2. Install Homebrew from <http://brew.sh/index_ja.html>

### Prezto
Follow the [installation](https://github.com/chkkchy/prezto#installation).


### Soralized Vim
Follow the [installation](https://github.com/altercation/vim-colors-solarized#option-2-pathogen-installation-recommended).
Do not miss [pathogen](https://github.com/tpope/vim-pathogen#installation) in the installation.


### Tmuxinator
Follow the [installation](https://github.com/tmuxinator/tmuxinator#installation).


### Execute setup script
```
ghq get git@github.com:chkkchy/dotfiles.git
ghq look chkkchy/dotfiles
./_setup.sh
```


Manual Setup
--------------------------------------------------


### Mac Apps
Download on App Store:

- Magnet
- Memory Monitor
- Stufflt Expander


### iTerm2
Preferences>General>Preferences>Load preferences from a custom folder or URL: `$(ghq root)/github.com/chkkchy/dotfiles/iterm2`

