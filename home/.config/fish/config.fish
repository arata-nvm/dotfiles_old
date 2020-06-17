set -x PATH $HOME/.anyenv/bin ~/.node/bin ~/.gem/ruby/2.7.0/bin $PATH
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --glob "!.git"'
set -x FZF_DEFAULT_OPTS '--height 30% --border'
# eval anyenv init - | source

alias htb='sudo openvpn $HOME/vpn/htb-aratanvm.ovpn'
alias thm='sudo openvpn $HOME/vpn/thm-aratanvm.ovpn'

function fd 
  set -q dir; or set dir "."
  set dir (find $dir -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m)
  cd "$dir"
end

