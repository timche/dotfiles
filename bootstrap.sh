#!/usr/bin/env bash

# Install XCode CLI Tools
xcode-select --install;

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh"\
    --exclude ".osx" --exclude ".brews" --exclude ".casks" --exclude ".terminal-themes/"\
    --exclude "README.md" --exclude "vagrant.sh" --exclude ".gitignore" --exclude "LICENSE" -avh --no-perms . ~;
    source ~/.bash_profile;
}

# do the install
if [ "$1" == "--install" -o "$1" == "-i" ]; then

    # install homebrew and cask
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install caskroom/cask/brew-cask;
    source ./.brews;
    source ./.casks;
    source ./.osx;
    doIt;
    unset doIt;
    exit 0;
fi;

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
