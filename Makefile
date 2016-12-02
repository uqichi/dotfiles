DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .zlogin .zlogout .zpreztorc .zprofile .zshenv .zshrc
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.PHONY: all
all: list

.PHONY: list
list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

.PHONY: deploy
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	ln -sfnv $(abspath ./zprezto) ${HOME}/.zprezto
	open /Applications/Dash.app && ln -sfnv $(abspath ./etc/dash/library.dash) ${HOME}/Library/Application\ Support/Dash/library.dash

.PHONY: init
init:
	xcode-select --install
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	sh ./etc/scripts/brew.sh
	sh ./etc/scripts/brewcask.sh
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/deinvim_installer.sh
	sh /tmp/deinvim_installer.sh ${HOME}/.vim/bundle
	pip3 install neovim
	mkdir -p ${HOME}/.vim
	mkdir -p ${HOME}/.config/nvim
	ln -snfv ${HOME}/.vim ${HOME}/.config/nvim/
	ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
	gem install tmuxinator

.PHONY: test
test:
	@echo 'test is not available for now'

.PHONY: update
update:
	git pull && git submodule update --init --recursive

.PHONY: install
install:

.PHONY: clean
clean:

.PHONY: help
help:
	@echo 'help:'
