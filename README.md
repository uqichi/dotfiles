
# dotfiles
my dotfiles.

## Setup
### Homebrew
1. Install the `Command Line Tools`. The standalone package can be obtained from <https://developer.apple.com/downloads> or it can be installed via Xcode's preferences.
2. Install Homebrew:

	```
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	```

### Prezto (Zsh framework)
Follow the [installation](https://github.com/chkkchy/prezto#installation).

You should fork the repository for [customization](https://github.com/sorin-ionescu/prezto#customization).


### Soralized Vim (Vim color scheme)
Follow the [installation](https://github.com/altercation/vim-colors-solarized#option-2-pathogen-installation-recommended).

### Tmuxinator
Follow the [installation](https://github.com/tmuxinator/tmuxinator#installation).

### Execute `setup.sh`

```
// For using git command:
brew install git

// Clone the repository:
git clone git@github.com:chkkchy/dotfiles.git ~

// Execute the script:
cd ~/dotfiles && ./setup.sh
```


##Extra Setup

### Mac Apps
Download on App Store:

- Magnet
- Memory Monitor
- Stufflt Expander

### Eclipse
#### plugins
Download on Eclipse Marketplace:

- Vrapper
- Moonrise UI Theme
- Color Theme
- Checkstyle plugin

#### extra
- Lombok
- Java Formatter
- Save Actions
