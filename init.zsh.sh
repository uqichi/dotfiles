#!/bin/sh

# Prezto installation
# https://github.com/sorin-ionescu/prezto

# 1. Launch Zsh:
zsh

# 2. Clone the repository:
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# 3. Create a new Zsh configuration by copying the Zsh configuration files provided:
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# 4. Set Zsh as your default shell:
chsh -s /bin/zsh

# 5. Open a new Zsh terminal window or tab.
