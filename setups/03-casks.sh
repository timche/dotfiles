#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Install
brew cask install 1password
brew cask install alfred
brew cask install caprine
brew cask install discord
brew cask install docker
brew cask install flux
brew cask install google-chrome
brew cask install handbrake
brew cask install hyper
brew cask install kap
brew cask install nordvpn
brew cask install postman
brew cask install rectangle
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install teamspeak-client
brew cask install usb-overdrive
brew cask install visual-studio-code
brew cask install vlc
brew cask install vnc-viewer
brew cask install whatsapp
