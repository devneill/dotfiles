# Dotfiles

New machine setup guide and dotfiles.

## macOS Basics

1. Set mouse speed to max
1. Set text to small
1. Make dock tiny
1. Set Caps Lock to Control
1. Turn off spaces rearranging based on most recently used
1. Customise Finder sidebar

## Install

### 1. Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Apps

```fish
brew install --cask zed figma arc raycast things craft fantastical superhuman slack discord bartender flux cleanshot pixelsnap ghostty 1password
```

### 3. CLI Tools

```fish
brew install fish mise gh fzf fd eza bat ripgrep git-delta
```

### 4. Fonts

```fish
brew install --cask font-geist font-geist-mono font-geist-mono-nerd-font
```

### 5. Fish Shell

```fish
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)
```

### 6. Clone & Install Dotfiles

```fish
git clone git@github.com:devneill/dotfiles.git ~/Code/utils/dotfiles
cd ~/Code/utils/dotfiles
fish install.fish
```

### 7. Fish Plugins

```fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install pure-fish/pure
fisher install PatrickF1/fzf.fish
fisher install jethrokuan/z
```

### 8. Pure Prompt Config

```fish
set --universal pure_enable_single_line_prompt true
set --universal pure_check_for_new_release false
```

### 9. Delta Themes (light/dark auto-switching)

```fish
mkdir -p "$(bat --config-dir)/themes" && cd "$(bat --config-dir)/themes"
git clone git@github.com:cpojer/licht-theme.git
git clone git@github.com:cpojer/dunkel-theme.git
bat cache --build
```

### 10. 1Password SSH Agent

1. Open 1Password → Settings → Developer → ✅ Use the SSH agent
2. Generate or import an SSH key in 1Password
3. Add the public key to [GitHub SSH keys](https://github.com/settings/ssh/new) (as both Authentication and Signing key)

### 11. GitHub CLI

```fish
gh auth login
```

### 12. Mise

```fish
mise use --global node@lts
mise use -g usage
```

### 13. Browser

- Install [Refined GitHub](https://github.com/refined-github/refined-github)
- Install 1Password browser extension

## What's Included

| Config | Description |
|---|---|
| `fish/config.fish` | Shell config, abbreviations, env vars |
| `ghostty/config` | Terminal emulator settings |
| `git/.gitconfig` | Git config, delta (auto light/dark), 1Password commit signing |
| `git/.gitignore_global` | Global gitignore |
| `mise/config.toml` | Runtime version manager settings |
| `ssh/config` | SSH client config (1Password agent) |
| `zed/settings.json` | Editor settings |

## ⚠️ Notes

- The `.gitconfig` contains a signing key specific to your 1Password SSH key. Update `user.signingkey` if using a different key.
- SSH config is copied (not symlinked) by the install script because SSH is strict about file permissions.
