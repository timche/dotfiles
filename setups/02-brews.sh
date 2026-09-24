#!/bin/bash#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Disable Analytics
brew analytics off

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install
brew install flyctl
brew install gh
brew install git
brew install herdr
brew install powerlevel10k
brew install zsh
brew install z
brew install zsh-syntax-highlighting

# Casks
brew install 1password
brew install 1password-cli
brew install alfred
brew install discord
brew install firefox
brew install firefox@developer-edition
brew install ghostty
brew install google-chrome
brew install --cask handbrake
brew install insomnia
brew install kap
brew install meru
brew install mullvad-browser
brew install mullvad-vpn
brew install orbstack
brew install rectangle
brew install shottr
brew install tableplus
brew install --cask tailscale
brew install teamspeak-client
brew install utm
brew install visual-studio-code
brew install whatsapp

# Cleanup after yourself!
brew cleanup
