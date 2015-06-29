
# dotfiles
my dotfiles.

## Simple setup
### 1. Install the Command Line Tools
The standalone package can be obtained from <https://developer.apple.com/downloads> or it can be installed via Xcode's preferences.
q
### 2. Install Homebrew

Open Terminal.App then install:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### 3. Install git
```
brew install git
```
### 4. Clone the repository
```
cd ~
git clone git@github.com:chkkchy/dotfiles.git
```

### 5. Setup everything
```
sh setup.sh
```

## Manual setup
### - Setup iterm2
1. Open Preference (Cmd+,)
2. Create a new profile
3. Load Preset from iterm/custom-solarized-dark.itermcolors
4. Set it as default profile

### - Download mac apps
Search apps below on App Store.

- Magnet
- Memory Monitor
- Stufflt Expander
