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
brew install bun
brew install fnm
brew install git
brew install gh
brew install starship
brew install wakeonlan
brew install zsh
brew install z
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Casks
brew install 1password
brew install 1password-cli
brew install alfred
brew install discord
brew install --cask docker
brew install firefox
brew install firefox@developer-edition
brew install --cask flux
brew install ghostty
brew install google-chrome
brew install --cask handbrake
brew install insomnia
brew install kap
brew install nordvpn
brew install notunes
brew install orbstack
brew install rectangle
brew install scroll-reverser
brew install spotify
brew install --cask tailscale
brew install teamspeak-client
brew install visual-studio-code
brew install whatsapp

# Cleanup after yourself!
brew cleanup
