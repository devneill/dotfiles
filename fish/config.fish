# Disable greeting
set fish_greeting

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# 1Password SSH Agent
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# --- CLI Tool Abbreviations ---

# eza (modern ls replacement)
abbr -a ls eza
abbr -a ll eza -la --icons --git
abbr -a lt eza -la --icons --git --tree --level=2
abbr -a la eza -la --icons --git --all

# bat (cat with syntax highlighting)
abbr -a cat bat

# ripgrep
abbr -a search rg

# --- Git Abbreviations ---
abbr -a gs git status
abbr -a ga git add
abbr -a gaa git add --all
abbr -a gc git commit
abbr -a gcm git commit -m
abbr -a gp git push
abbr -a gpf git push --force-with-lease
abbr -a gl git pull
abbr -a gco git checkout
abbr -a gcb git checkout -b
abbr -a gsw git switch
abbr -a gb git branch
abbr -a gbD git branch -D
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a glog git log --oneline --graph --decorate

# Stash
abbr -a gsta git stash push
abbr -a gstp git stash pop

# Rebase
abbr -a grbm git rebase main
abbr -a grbc git rebase --continue
abbr -a grba git rebase --abort

# WIP workflow
abbr -a gwipa "git add --all && git commit -m 'WIP'"

# Reset
abbr -a gclean git clean -f -d
abbr -a greset git reset --hard

# --- Config Shortcuts ---
abbr -a setfish zed ~/.config/fish/config.fish
abbr -a setgit zed ~/.gitconfig
abbr -a setghost zed ~/.config/ghostty/config

# --- Misc ---
abbr -a brewup "brew update && brew upgrade && brew cleanup"
