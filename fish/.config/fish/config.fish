set -x PATH $PATH /usr/local/go/bin $GOPATH/bin ~/go/bin /opt $HOME/.config/lf/ $HOME/.local/bin/ $HOME/.cargo/bin

source ~/.config/fish/fish_greeting
set -U fish_greeting

starship init fish | source

# aliases
alias sudo="sudo "
alias vim="nvim"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias gst='git status'
alias gau='git add -u'
alias gaa='git add -A'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -sv'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gpd='git pull origin develop'
alias gpm='git pull origin master'
alias gp='git pull'
alias gl='git log --graph --color'
alias grep='grep --color=auto'
alias cleangit='git branch --merged | grep -E "(^\*|master|dev)" | xargs git branch -d'

alias f='vim "$(fzf)"'

alias pdf='evince'

alias dc='docker compose'

alias ism='iex -S mix'

# enable history for Elixir's IEX
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x TERM "alacritty"
set -x TERMINAL "alacritty"
