set -x PATH $HOME/.anyenv/bin ~/.node/bin ~/.gem/ruby/2.7.0/bin $PATH
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --glob "!.git"'
set -x FZF_DEFAULT_OPTS '--height 30% --border'
eval anyenv init - | source

alias htb='sudo openvpn $HOME/vpn/htb-aratanvm.ovpn'
alias thm='sudo openvpn $HOME/vpn/thm-aratanvm.ovpn'

