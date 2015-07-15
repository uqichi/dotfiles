
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
### 4. Clone the repository
```
cd ~
git clone git@github.com:chkkchy/dotfiles.git
```

### 5. Clone my prezto repository
```
cd ~/dotfiles
git clone git@github.com:chkkchy/prezto.git
```
Then, update submodules:

```
cd ./prezto
git pull && git submodule update --init --recursive
```

### 6. Exec the setup script
```
cd ~/dotfiles
sh setup.sh
```

----
##Extras

### Mac Apps
- Magnet
- Memory Monitor
- Stufflt Expander

### iTerm2
#### shortcut keys
Key bind list:
<http://loumo.jp/wp/archive/20120305090532/>,
<http://openlab.dino.co.jp/2007/09/18/19355263.html>,
<http://masasuzu.hatenablog.jp/entry/20111201/1322745282>

Enable alt key for meta key:
<http://voidptr.seesaa.net/article/395408528.html>

Preference>Keys>Global Shortcut Keys

```
bind Alt+f to Esc+f
bind Alt+b to Esc+b
bind Alt+d to Esc+d
```

### Eclipse
#### plugins
- Vrapper
- Moonrise UI Theme
- Color Theme
- Checkstyle plugin

#### extra settings
- lombok
	
	Clean-Restart after executed lombok.jar:
	
	```
	/Applications/Eclipse.app/Contents/MacOS/eclipse -clean
	```
	
- Java formatter

	Preference>Java>Code Style>Formatter
	

- Save Actions

	Preference>Java>Editor>Save Actions
	
	<http://d.hatena.ne.jp/seiji379/20100105/1262671218>
