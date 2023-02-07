#!/bin/bash#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install
brew install git
brew install hub
brew install pure
brew install tree
brew install z
brew install zsh
brew install zsh-syntax-highlighting

# Cleanup after yourself!
brew cleanup
