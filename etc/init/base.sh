#!/usr/bin/env bash

source etc/lib/log.sh

log_info "Installing base"

sudo pacman --noconfirm -Rs palemoon-bin vlc

sudo pacman --noconfirm -S bat fcitx-im fcitx-mozc i3blocks

yay -S ttf-cica

sudo cp -pR assets/fonts/* /usr/share/fonts

log_success "Installed base"
