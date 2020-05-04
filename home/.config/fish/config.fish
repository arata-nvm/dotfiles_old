set -x PATH $HOME/.anyenv/bin ~/.node/bin $PATH
eval anyenv init - | source

alias htb='sudo openvpn $HOME/vpn/htb-aratanvm.ovpn'
alias thm='sudo openvpn $HOME/vpn/thm-aratanvm.ovpn'

fusuma 1> /dev/null 2> /dev/null &

eval (opam env)

