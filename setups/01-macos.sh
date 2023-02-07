# --------------------------------------------------
# OSX SETTINGS
# --------------------------------------------------

#!/bin/bash

# ~/.osx — https://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do
	sudo -n true
	sleep 60
	kill -0 "$$" || exit
done 2>/dev/null &

# --------------------------------------------------
# Menu Bar
# --------------------------------------------------

# Show Battery Percent
defaults write com.apple.menuextra.battery ShowPercent -bool true

# --------------------------------------------------
# Trackpad Settings
# --------------------------------------------------

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


# --------------------------------------------------
# Screen Stuff
# --------------------------------------------------

# Require password after sleep after 5 seconds or screen saver begins after 1 second
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Save screenshots to pictures
defaults write com.apple.screencapture location -string "${HOME}/Pictures"

# --------------------------------------------------
# Finder
# --------------------------------------------------

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# --------------------------------------------------
# Dock & Mission Control
# --------------------------------------------------

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Bottom left screen corner → Desktop
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → Mission Control
defaults write com.apple.dock wvous-br-corner -int 2
defaults write com.apple.dock wvous-br-modifier -int 0

# --------------------------------------------------
# Kill affected Applications
# --------------------------------------------------

for app in "Activity Monitor" "cfprefsd" \
	"Dock" "Finder" "SystemUIServer"; do
	killall "${app}" >/dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
