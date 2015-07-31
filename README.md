
# dotfiles
my dotfiles.

## Setup
### 1. Install the Command Line Tools
The standalone package can be obtained from <https://developer.apple.com/downloads> or it can be installed via Xcode's preferences.

### 2. Install Homebrew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### 3. Install Git
```
brew install git
```

### 4. Setup prezto
Follow the [installation](https://github.com/chkkchy/prezto#installation).

For setting local aliases, Create `.zshrc.alias.local` in your home directory.

### 5. Clone the repository
```
cd ~
git clone git@github.com:chkkchy/dotfiles.git
```

### 6. Exec the setup script
```
cd ~/dotfiles
sh setup.sh
```


##Extra Setup

### Mac Apps
Download on App Store:

- Magnet
- Memory Monitor
- Stufflt Expander

### iTerm2
#### shortcut
<http://loumo.jp/wp/archive/20120305090532/>

<http://openlab.dino.co.jp/2007/09/18/19355263.html>

<http://masasuzu.hatenablog.jp/entry/20111201/1322745282>

<http://voidptr.seesaa.net/article/395408528.html>

Preference > Keys > Global Shortcut Keys

```
bind Alt+f to Esc+f
bind Alt+b to Esc+b
bind Alt+d to Esc+d
```

### Eclipse
#### plugins
Download on Eclipse Marketplace:

- Vrapper
- Moonrise UI Theme
- Color Theme
- Checkstyle plugin

#### extra settings
- Lombok
- Java formatter
- Save Actions