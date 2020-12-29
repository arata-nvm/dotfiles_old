set -x PATH $HOME/.anyenv/bin ~/.node/bin ~/.gem/ruby/2.7.0/bin $PATH
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --glob "!.git"'
set -x FZF_DEFAULT_OPTS '--height 30% --border'
# eval anyenv init - | source

alias htb='sudo openvpn $HOME/vpn/htb-aratanvm.ovpn'
alias thm='sudo openvpn $HOME/vpn/thm-aratanvm.ovpn'
alias gdb='gdb -q'
alias vim='nvim'
alias rm='trash-put'

function fd 
  set -q dir; or set dir "."
  set dir (find $dir -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m)
  cd "$dir"
end

function fvim
  set selected_file (git ls-files | fzf  -m --preview 'head -100 {}')
  vim "$selected_file"
end

function fga
  set selected_files (git status  --short | awk '{print $2}' | fzf -m --preview 'git diff {}')
  git add $selected_files
end
