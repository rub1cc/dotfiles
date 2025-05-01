export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git 
  zsh-z 
  fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ------------------------------ #
# Brew
# ------------------------------ #
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# ------------------------------ #
# Android
# ------------------------------ #
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# ------------------------------ #
# General
# ------------------------------ #
alias cat="bat"

# ------------------------------ #
# Node Package Manager
# ------------------------------ #
alias s="nr start"
alias d="nr dev"
alias b="nr build"

# ------------------------------ #
# Git
# ------------------------------ #
alias grt='cd "$(git rev-parse --show-toplevel)"'
alias main="git checkout main"

alias gs="git status"

alias ga="git add"
alias gA="git add -A"

alias gc="git commit"
alias gcm="git commit -m"

alias gp="git push"
alias gpf="git push --force"
alias gcl="git clone"
alias gpl="git pull"

alias gl="git log"
alias glo="git log --oneline --graph"

alias grv="git remote -v"
alias gst="git stash --include-untracked"

alias lg="lazygit"
alias ldo="lazydocker"

# ------------------------------ #
# Directory listing
# ------------------------------ #
alias ls="exa"
alias ll="exa -l -g --icons"
alias la="exa -l -g --icons -a"


# ------------------------------ #
# Custom commands
# ------------------------------ #
function repos() {
  cd ~/r/
}