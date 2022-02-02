# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="theunraveler"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  asdf
)

zstyle ':omz:update' mode auto      # update automatically without asking

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

alias setzsh="vim ~/.zshrc"
alias setvim="vim ~/.vimrc"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
