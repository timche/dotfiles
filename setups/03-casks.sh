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
brew install 1password
brew install alfred
brew install discord
brew install docker
brew install flux
brew install google-chrome
brew install hyper
brew install kap
brew install nordvpn
brew install postman
brew install rectangle
brew install spotify
brew install teamspeak-client
brew install visual-studio-code
brew install vlc
brew install whatsapp
