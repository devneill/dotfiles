# Dotfiles

Personal development environment configuration.

## What's Included

| Config | Path | Description |
|---|---|---|
| Fish | `fish/config.fish` | Shell config, abbreviations, env vars |
| Ghostty | `ghostty/config` | Terminal emulator settings |
| Git | `git/.gitconfig` | Git config, delta, commit signing |
| Git | `git/.gitignore_global` | Global gitignore |
| Mise | `mise/config.toml` | Runtime version manager settings |
| SSH | `ssh/config` | SSH client config (1Password agent) |
| Zed | `zed/settings.json` | Editor settings |

## Setup a New Machine

### 1. Install dependencies

```fish
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Fish shell
brew install fish
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)

# CLI tools
brew install fzf fd eza bat ripgrep git-delta mise

# Fonts
brew install --cask font-geist font-geist-mono font-geist-mono-nerd-font

# Apps
brew install --cask ghostty zed 1password
```

### 2. Clone and install dotfiles

```fish
git clone git@github.com:devneill/dotfiles.git ~/Code/utils/dotfiles
cd ~/Code/utils/dotfiles
fish install.fish
```

### 3. Fish plugins

```fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install pure-fish/pure
fisher install PatrickF1/fzf.fish
fisher install jethrokuan/z
```

### 4. Pure prompt config

```fish
set --universal pure_enable_single_line_prompt true
set --universal pure_check_for_new_release false
```

### 5. 1Password SSH Agent

1. Open 1Password → Settings → Developer → ✅ Use the SSH agent
2. The SSH config will point to the 1Password agent automatically

## ⚠️ Note

The `.gitconfig` contains a signing key specific to this machine's 1Password SSH key. Update `user.signingkey` if using a different key.
