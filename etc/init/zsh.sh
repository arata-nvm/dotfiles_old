#!/usr/bin/env bash

source ../lib/log.sh

log_info "Installing zsh"

zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh

log_success "Installed zsh"
