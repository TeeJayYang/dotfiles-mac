# !/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || { echo 'Could not install brew!' ; exit 1 }
# brew cask install iterm2
brew cask install kitty 
brew install python3

# installing updated bash
brew install bash
chsh -s $(brew --prefix)/bin/bash

# enabling upgraded bash as a login shell
echo "$(brew --prefix)/bin/bash" | sudo tee -a /etc/shells > /dev/null


# Copy the example configuration into your home directory:
#   cp /usr/local/opt/chunkwm/share/chunkwm/examples/chunkwmrc ~/.chunkwmrc

# Opening chunkwm will prompt for Accessibility API permissions. After access
# has been granted, the application must be restarted.
#   brew services restart chunkwm

# This has to be done after every update to chunkwm, unless you codesign the
# binary with self-signed certificate before restarting
# Create code signing certificate named "chunkwm-cert" using Keychain Access.app
#   codesign -fs "chunkwm-cert" /usr/local/opt/chunkwm/bin/chunkwm

# NOTE: options "--with-logging" and "--with-tmp-logging" are deprecated since now
# chunkwm supports logging through configuration:
#   chunkc core::log_file <stdout | stderr | /path/to/file>

# NOTE: plugins folder has been moved to /usr/local/opt/chunkwm/share/chunkwm/plugins

# zsh completions have been installed to:
#   /usr/local/share/zsh/site-functions

# To have launchd start koekeishiya/formulae/chunkwm now and restart at login:
#   brew services start koekeishiya/formulae/chunkwm
# Or, if you don't want/need a background service you can just run:
#   chunkwm

# Copy the example configuration into your home directory:
#   cp /usr/local/opt/skhd/share/skhd/examples/skhdrc ~/.skhdrc

# To have launcd start koekeishiya/formulae/skhd now and restart at login:
#   brew services start koekeishiya/formulae/skhd
# Or, if you don't want/need a background service you can just run:
#   skhd
