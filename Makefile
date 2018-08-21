DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

.PHONY: debug
debug:
	@echo dotpath: $(DOTPATH)
	@echo candidates: $(CANDIDATES)
	@echo exclusions: $(EXCLUSIONS)
	@echo dotfiles: $(DOTFILES)

.PHONY: list
list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

.PHONY: deploy
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

.PHONY: init
init:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew update && brew upgrade
	brew install rcmdnk/file/brew-file
	brew-file cat && brew-file install
	$(foreach val, $(wildcard etc/*/init.sh), sh $(abspath $(val));)
	chsh -s /bin/zsh # Set Zsh as your default shell

.PHONY: update
update:
	@git pull && git submodule update --init --recursive

.PHONY: install
install: update deploy init
	@exec $$SHELL

.PHONY: undeploy
undeploy:
	@$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)

.PHONY: help
help:
	@cat doc/make_help.txt
