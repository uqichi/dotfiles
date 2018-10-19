DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitignore .gitmodules
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

.PHONY: print
print: ## Print variables for debug
	@echo dotpath: $(DOTPATH)
	@echo candidates: $(CANDIDATES)
	@echo exclusions: $(EXCLUSIONS)
	@echo dotfiles: $(DOTFILES)

.PHONY: list
list: ## List all dotfiles to be deployed
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

.PHONY: deploy
deploy: ## Create symlinks to home directory
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

.PHONY: init
init: ## Run initial setup
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew update && brew upgrade
	brew install rcmdnk/file/brew-file
	brew-file cat && brew-file install
	$(foreach val, $(wildcard etc/*/init.sh), sh $(abspath $(val));)
	chsh -s /bin/zsh # Set Zsh as your default shell

.PHONY: update
update: ## Fetch remote changes from github
	@git pull && git submodule update --init --recursive

.PHONY: install
install: update deploy init ## Run install, at first, for all :)
	@exec $$SHELL

.PHONY: undeploy
undeploy: ## Remove symlinks from home directory
	@$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)

.PHONY:
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
