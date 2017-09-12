DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

.PHONY: debug
cat:
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
	xcode-select --install
	sudo xcodebuild -license
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew update && brew upgrade
	$(foreach val, $(wildcard etc/*/init.sh), sh $(abspath $(val));)

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
	@echo "\n"\
		"USAGE: make COMMAND\n\n"\
		"COMMANDS:\n"\
		"\tlist\n"\
		"\t\tShow dotfiles to be targeted.\n"\
		"\tdeploy\n"\
		"\t\tCreate symlinks for dotfiles.\n"\
		"\tinit\n"\
		"\t\tSetup initial environment settings.\n"\
		"\tupdate\n"\
		"\t\tFetch remote changes and update brewfile.\n"\
		"\tinstall\n"\
		"\t\tRun make update, deploy and init.\n"\
		"\tundeploy\n"\
		"\t\tRemove all symlinks for dotfiles.\n"
