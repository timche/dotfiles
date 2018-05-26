#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install
brew cask install 1password
brew cask install alfred
brew cask install atom
brew cask install caprine
brew cask install discord
brew cask install font-hack
brew cask install font-source-code-pro
brew cask install google-chrome
brew cask install hyper
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install telegram
brew cask install whatsapp
brew cask install vlc
