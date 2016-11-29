all:

list:
	@echo 'list:'

deploy:
	@echo 'deploy:'
	@ls -F -d .* | grep -v / | xargs -I{} ln -sfnv $(abspath {}) ${HOME}/{}
	@open /Applications/Dash.app && ln -sfnv $(abspath ./dash/library.dash) ${HOME}/Library/Application\ Support/Dash/library.dash

init:
	@echo 'init:'

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
