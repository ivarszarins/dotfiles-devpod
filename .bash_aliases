alias la=tree
alias v=nvim

# Docker
alias docker-acc="docker context use ucp-acc"
alias docker-prod="docker context use ucp-prod"
alias docker-linux="docker context use desktop-linux"
alias docker-windows="docker context use desktop-windows"

alias d-service="docker service ls | fzf | awk '{print \$1}'"
alias d-container="docker ps | fzf | awk '{print \$1}'"
alias d-exec="docker exec -it \$(d-container) "
alias d-inspect="docker service inspect \$(d-service)"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Eza
alias ls="eza --group-directories-first --icons"
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"

# Git
alias g="git"
alias gst="git status"
alias gss="git status --short"
alias ga="git add"
alias gb="git branch"
alias gba="git branch --all"
alias gbl="git blame -b -w"
alias gc="git commit --verbose"
alias gca="git commit --verbose --all"
alias gcam="git commit --all --message"
alias gcb="git checkout -b"
alias gd="git diff"
alias gds="git diff --staged"
alias gp="git push"
alias gl="git pull"
alias glg="git log --stat"
alias glgg="git log --graph"
alias glo="git log --oneline --decorate"

alias as-tree='tree --fromfile'
