#!/usr/bin/env bash

source ../lib/log.sh

log_info "Installing base"

sudo pacman --noconfirm -Rs palemoon-bin vlc

sudo pacman --noconfirm -S bat fcitx-im fcitx-mozc i3blocks

yay -S ci ttf-cica

log_success "Installed base"
