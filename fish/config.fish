# Disable greeting
set fish_greeting

# Homebrew path (Apple Silicon)
fish_add_path /opt/homebrew/bin

# 1Password SSH Agent
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# --- CLI Tool Aliases ---

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
abbr -a gl git pull
abbr -a gco git checkout
abbr -a gsw git switch
abbr -a gb git branch
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a glog git log --oneline --graph --decorate

# --- Misc ---
abbr -a brewup "brew update && brew upgrade && brew cleanup"
