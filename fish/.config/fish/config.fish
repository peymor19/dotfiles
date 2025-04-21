set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin ~/go/bin /opt $HOME/.config/lf/ $HOME/.local/bin/ $HOME/.cargo/bin /opt/elixir/bin

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
alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias grep='grep --color=auto'
alias cleangit='git branch --merged | grep -Ev "(^\*|^\+|master|main|dev)" | xargs --no-run-if-empty git branch -d'

alias f='vim "$(fzf)"'

alias pdf='evince'

alias dc='docker compose'

alias pc='podman-compose'

alias ism='iex -S mix'

alias clip='xclip -sel clip'

# enable history for Elixir's IEX
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x ERL_TOP "/opt/otp"

set -x TERM "xterm-256color"
set -x TERMINAL "xterm-256color"

set -x BROWSER "brave"

set -x IEX true

#set -x DOCKER_HOST "unix:///run/user/$(id -u)/podman/podman.sock"
set -x DOCKER_HOST "unix:///var/run/docker.sock"

# Start ssh-agent
if test -z (pgrep ssh-agent | string collect)
    eval (ssh-agent -c) > /dev/null
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx &>/dev/null
    end
end
