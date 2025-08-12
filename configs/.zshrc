# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Theme to load
ZSH_THEME="pixegami-agnoster"

# Plugins for Git/highlighting/suggestions
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  nvm
)

# Setup Bun/Flutter/Dart paths
export PATH=$BUN_INSTALL/bin:$PATH
export PATH=/home/arno/flutter/bin:$PATH
export PATH=/home/arno/flutter/bin/cache/dart-sdk/bin:$PATH

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Load NVM
source ~/.nvm/nvm.sh
# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# History setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# Keybindings
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# Aliases
alias gake="./bin/goyek"
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias grp="git rebase prerelease"
alias grd="git rebase development"
alias gp="git push"
alias gpt="git push --tags"
alias gckm="git checkout master"
alias gckp="git checkout prerelease"
alias gckd="git checkout development"
alias gck="git checkout"

gacp() {
    git add .
    git commit -m "$1"
    git push
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Bun completions, uncomment if Bun is installed
# [ -s "/home/arno/.bun/_bun" ] && source "/home/arno/.bun/_bun"
