export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="devcontainers"
plugins=(git)
source $ZSH/oh-my-zsh.sh
zstyle ':omz:update' mode disabled
eval "$(~/.local/bin/mise activate zsh)"

# Git shortcuts
unalias gc 2>/dev/null
unalias gb 2>/dev/null
alias gcm='git commit -m'
alias gl1="git log --pretty=format:'%H' -n 1"
alias gp="git pull"
alias gs="git status"
alias ga="git add"
alias gd="git diff"

gc() { git checkout "$@"; }
gb() { git branch "$@"; }
compdef gc=git
compdef gb=git

# Ruby / Rails / Bundler
alias bi='bundle install'
alias buc='bundle update cobot_assets'
alias rs='rails s'

# Node / Yarn
alias ni='npm install'
alias yi='yarn install --check-files'
alias yuc='yarn upgrade cobot_assets'
alias puc='pnpm upgrade cobot_assets'