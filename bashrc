cat <<'EOF' > ~/dotfiles/bashrc
# Git shortcuts
alias gcm='git commit -m'
alias gl1="git log --pretty=format:'%H' -n 1"
alias gp="git pull"
alias gs="git status"
alias ga="git add"
alias gd="git diff"

gc() { git checkout "$@"; }
gb() { git branch "$@"; }
if declare -f __git_complete > /dev/null; then
  __git_complete gc _git_checkout
  __git_complete gb _git_branch
fi

# Ruby / Rails / Bundler
alias bi='bundle install'
alias buc='bundle update cobot_assets'
alias rs='rails s'

# Node / Yarn
alias ni='npm install'
alias yi='yarn install --check-files'
alias yuc='yarn upgrade cobot_assets'
alias puc='pnpm upgrade cobot_assets'
EOF