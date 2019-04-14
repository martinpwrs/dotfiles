eval (python3 -m virtualfish auto_activation)

if status is-interactive
and not set -q TMUX
  exec tmux new-session -A -s main
end

alias gb="git branch"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gco="git checkout"
alias gc="git commit"

alias cdd="cd ~/Downloads/"
alias lr="ls -lR"
