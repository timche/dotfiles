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
brew install docker-machine
brew install go
brew install hub
brew install neovim
brew install node
brew install streamlink
brew install tree
brew install wget
brew install yarn
brew install youtube-dl
brew install z
brew install zsh
brew install zsh-syntax-highlighting

# Cleanup after yourself!
brew cleanup
