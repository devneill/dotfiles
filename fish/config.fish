if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias setfish="vim ~/.config/fish/config.fish"
alias setvim="vim ~/.vimrc"
alias setgit="vim ~/.gitconfig"

# FE Aliases
alias sb="yarn storybook"

# Git Aliases
alias gcm="git checkout main"

alias glo="git log --oneline --decorate"
alias gst="git status"
alias gsta="git stash push"
alias gstp="git stash pop"
alias gd="git diff"
alias ga="git add"
alias gaa="git add --all"
alias gcmsg="git commit -m"
alias gca="git commit --amend"
alias gl="git pull"
alias gp="git push"
alias gpsup="git push --set-upstream origin"
alias gpf="git push --force-with-lease"

alias gco="git checkout"
alias gcb="git checkout -b"
alias gbD="git branch -D"

alias grbm="git rebase main"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"

alias gwipa="git add --all && git commit -m 'WIP'"
alias gwipp="git reset --soft && git restore --staged"

alias gclean="git clean -f -d"
alias greset="git reset --hard"


eval (/opt/homebrew/bin/brew shellenv)

set fish_greeting ""
