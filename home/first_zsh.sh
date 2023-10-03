#!/bin/zsh
# Source: https://github.com/Remi-deronzier/public-dotfiles/blob/main/install.sh

echo "Setting up your shell..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install zsh
brew install oh

# TODO: For Linux
# Source: https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
# sudo vi /etc/shells
# chsh -s $(which zsh)
# For m1 macs:
# chsh -s /opt/homebrew/bin/zsh
# For intel macs:
# chsh -s /usr/local/bin/zsh

# first, add the new shell to the list of allowed shells.
# sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'

# Source: https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh