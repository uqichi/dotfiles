.PHONY: all
all:

.PHONY: list
list:
	@echo 'list:'

.PHONY: deploy
deploy:
	@echo 'deploy:'
	ls -F -d .* | grep -v / | grep -v .DS_Store | xargs -I{} ln -sfnv $(abspath {}) ${HOME}/{}
	ln -sfnv $(abspath ./tmuxinator) ${HOME}/.tmuxinator
	open /Applications/Dash.app && ln -sfnv $(abspath ./dash/library.dash) ${HOME}/Library/Application\ Support/Dash/library.dash

.PHONY: init
init:
	@echo 'init:'
	sh ./scripts/brew.sh
	sh ./scripts/brewcask.sh
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/deinvim_installer.sh
	sh /tmp/deinvim_installer.sh ${HOME}/.vim/bundle
	pip3 install neovim
	mkdir -p ${HOME}/.vim
	mkdir -p ${HOME}/.config/nvim
	ln -snfv ${HOME}/.vim ${HOME}/.config/nvim/
	ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim

.PHONY: test
test:
	@echo 'test:'

.PHONY: update
update:
	@echo 'update:'
	git pull

.PHONY: install
install:
	@echo 'install:'

.PHONY: clean
clean:
	@echo 'clean:'

.PHONY: help
help:
	@echo 'help:'
