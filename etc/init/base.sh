#!/usr/bin/env bash

source ../lib/log.sh

log_info "Installing base"

sudo pacman --noconfirm -Rs palemoon-bin vlc

sudo pacman --noconfirm -S bat

log_success "Installed base"
