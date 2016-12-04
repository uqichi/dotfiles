setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -sfnv "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
