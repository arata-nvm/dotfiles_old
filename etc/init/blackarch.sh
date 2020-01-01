#!/usr/bin/env bash

source etc/lib/log.sh

log_info "Installing BlackArch"

curl -O https://blackarch.org/strap.sh

if [ " sha1sum strap.sh " != "9f770789df3b7803105e5fbc19212889674cd50" ]; then
  log_failure "The SHA1 sum didn't match"
  exit 1
fi

chmod +x strap.sh

sudo ./strap.sh

log_success "Installed BlackArch"
