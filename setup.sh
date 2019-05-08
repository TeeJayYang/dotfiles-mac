# !/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || { echo 'Could not install brew!' ; exit 1 }
brew cask install iterm2
brew install python3

## installing updated bash
brew install bash
chsh -s $(brew --prefix)/bin/bash

## enabling upgraded bash as a login shell
echo "$(brew --prefix)/bin/bash" | sudo tee -a /etc/shells > /dev/null
