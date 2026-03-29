#!/usr/bin/env fish

echo "⚙️  Applying macOS defaults..."

# --- Keyboard ---
# Faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Disable press-and-hold for accented characters
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "  ✅ Keyboard"

# --- Finder ---
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Default to list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
echo "  ✅ Finder"

# --- Dock ---
# Auto-hide dock
defaults write com.apple.dock autohide -bool true

# Remove dock show/hide delay
defaults write com.apple.dock autohide-delay -float 0

# Faster dock animation
defaults write com.apple.dock autohide-time-modifier -float 0.3

# Make dock tiny
defaults write com.apple.dock tilesize -int 36

# Don't show recent apps
defaults write com.apple.dock show-recents -bool false
echo "  ✅ Dock"

# --- Screenshots ---
# Save to ~/Screenshots
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots

# Save as PNG
defaults write com.apple.screencapture type -string "png"

# Disable shadow
defaults write com.apple.screencapture disable-shadow -bool true
echo "  ✅ Screenshots"

# --- Mission Control ---
# Don't rearrange spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Don't automatically switch to a space with open windows for the app
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool false
echo "  ✅ Mission Control"

# --- Trackpad ---
# Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Tracking speed (0 to 3, default is about 1)
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 2.5
echo "  ✅ Trackpad"

# --- Misc ---
# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable "Are you sure you want to open this application?"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
echo "  ✅ Misc"

# --- Restart affected apps ---
echo ""
echo "🔄 Restarting affected apps..."
killall Finder 2>/dev/null
killall Dock 2>/dev/null
killall SystemUIServer 2>/dev/null

echo ""
echo "🎉 Done! Some changes may require a logout/restart."
