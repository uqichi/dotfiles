all:

list:
	@echo 'list:'

deploy:
	@echo 'deploy:'
	ls -F -d .* | grep -v / | grep -v .DS_Store | xargs -I{} ln -sfnv $(abspath {}) ${HOME}/{}
	ln -sfnv $(abspath ./tmuxinator) ${HOME}/.tmuxinator
	open /Applications/Dash.app && ln -sfnv $(abspath ./dash/library.dash) ${HOME}/Library/Application\ Support/Dash/library.dash

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

test:
	@echo 'test:'

update:
	@echo 'update:'

install:
	@echo 'install:'

clean:
	@echo 'clean:'

help:
	@echo 'help:'
