DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .zlogin .zlogout .zpreztorc .zprofile .zshenv .zshrc
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

.PHONY: all
all:

.PHONY: debug
debug:
	@echo DOTPATH: ${DOTPATH}
	@echo CANDIDATES: ${CANDIDATES}
	@echo EXCLUSIONS: ${EXCLUSIONS}
	@echo DOTFILES: ${DOTFILES}

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
	@$(foreach val, $(wildcard etc/scripts/*.sh), sh $(abspath $(val));)
	gem install tmuxinator

.PHONY: test
test:
	@echo 'test command is under development for now'

.PHONY: update
update:
	git pull && git submodule update --init --recursive

.PHONY: install
install: update deploy init
	@exec $$SHELL

.PHONY: clean
clean:
	@echo 'clean command is under development for now'


.PHONY: help
help:
	@echo "\n"\
		"Usage: make COMMAND\n\n"\
		"COMMANDS:\n"\
		"\tdebug\n"\
		"\t\tdebug\n"\
		"\tlist\n"\
		"\t\tlist\n"\
		"\tdeploy\n"\
		"\t\tdeploy\n"\
		"\tinit\n"\
		"\t\tinit\n"\
		"\ttest\n"\
		"\t\ttest\n"\
		"\tupdate\n"\
		"\t\tupdate\n"\
		"\tinstall\n"\
		"\t\tinstall\n"\
		"\tclean\n"\
		"\t\tclean\n"\
		"\thelp\n"\
		"\t\thelp\n"
