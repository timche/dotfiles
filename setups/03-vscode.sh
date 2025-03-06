#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Extensions
code --install-extension biomejs.biome
code --install-extension bradlc.vscode-tailwindcss
code --install-extension esbenp.prettier-vscode
code --install-extension yoavbls.pretty-ts-errors
code --install-extension foxundermoon.shell-format
code --install-extension oven.bun-vscode
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension github.copilot
code --install-extension github.copilot-chat
