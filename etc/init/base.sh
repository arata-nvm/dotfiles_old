#!/usr/bin/env bash

source etc/lib/log.sh

log_info "Installing base"

sudo pacman --noconfirm -Rs palemoon-bin vlc

sudo pacman --noconfirm -S bat fcitx-im fcitx-mozc i3blocks mpv rofi skippy-xd redshift firefox-developer-edition zathura zathura-pdf-mupdf

yay -S ttf-cica ruby-fusuma

sudo cp -pR assets/fonts/* /usr/share/fonts
sudo cp -pR assets/wallpapers/* /usr/share/backgrounds

log_success "Installed base"
