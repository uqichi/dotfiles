DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .zlogin .zlogout .zpreztorc .zprofile .zshenv .zshrc
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

.PHONY: all
all:

.PHONY: list
list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

.PHONY: deploy
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	ln -sfnv $(abspath ./etc/dash/library.dash) ${HOME}/Library/Application\ Support/Dash/library.dash

.PHONY: init
init:
	xcode-select --install
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	HOMEBREW_BREWFILE=$(DOTPATH)/Brewfile HOMEBREW_CASK_OPTS=--caskroom=/opt/homebrew-cask/Caskroom brew file install --preupdate
	brew cleanup && brew cask cleanup
	gem install tmuxinator
	@$(foreach val, $(wildcard etc/scripts/*.sh), sh $(abspath $(val));)

.PHONY: test
test:
	@echo 'test command is under development for now'

.PHONY: update
update:
	git pull && git submodule update --init --recursive
	HOMEBREW_BREWFILE=$(DOTPATH)/Brewfile brew file init -y
	brew cleanup && brew cask cleanup

.PHONY: install
install: update deploy init
	@exec $$SHELL

.PHONY: destroy
destroy:
	@$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	unlink ${HOME}/Library/Application\ Support/Dash/library.dash

.PHONY: help
help:
	@echo "\n"\
		"USAGE: make COMMAND\n\n"\
		"COMMANDS:\n"\
		"\tlist\n"\
		"\t\tShow dotfiles to be deployed.\n"\
		"\tdeploy\n"\
		"\t\tCreate symlinks for dotfiles.\n"\
		"\tinit\n"\
		"\t\tSetup environment settings at once.\n"\
		"\ttest\n"\
		"\t\tTest dotfiles and init scripts.\n"\
		"\tupdate\n"\
		"\t\tFetch remote changes and update brewfile.\n"\
		"\tinstall\n"\
		"\t\tRun make update, deploy, init.\n"\
		"\tdestroy\n"\
		"\t\tRemove all symlinks for dotfiles.\n"
