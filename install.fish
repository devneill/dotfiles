#!/usr/bin/env fish

set DOTFILES (cd (dirname (status filename)); and pwd)

echo "🔗 Symlinking dotfiles from $DOTFILES"

# Fish
mkdir -p ~/.config/fish
ln -sf $DOTFILES/fish/config.fish ~/.config/fish/config.fish
echo "  ✅ Fish"

# Ghostty
mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
ln -sf $DOTFILES/ghostty/config ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty
echo "  ✅ Ghostty"

# Git
ln -sf $DOTFILES/git/.gitconfig ~/.gitconfig
ln -sf $DOTFILES/git/.gitignore_global ~/.gitignore_global
echo "  ✅ Git"

# Mise
mkdir -p ~/.config/mise
ln -sf $DOTFILES/mise/config.toml ~/.config/mise/config.toml
echo "  ✅ Mise"

# SSH (copy, don't symlink — permissions matter)
mkdir -p ~/.ssh
cp -n $DOTFILES/ssh/config ~/.ssh/config 2>/dev/null; or echo "  ⚠️  SSH config already exists, skipping"
chmod 600 ~/.ssh/config
echo "  ✅ SSH"

# Zed
mkdir -p ~/.config/zed
ln -sf $DOTFILES/zed/settings.json ~/.config/zed/settings.json
ln -sf $DOTFILES/zed/keymap.json ~/.config/zed/keymap.json
echo "  ✅ Zed"

echo ""
echo "🎉 Done! Restart your terminal to apply changes."
