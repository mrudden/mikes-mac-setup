#!/bin/bash

echo "Starting setup procedure!"

# Install Homebrew if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Brew formulae
brew_formulae=()
# Brew Cask formulae
brew_cask_formulae=()

# Install Python 3
brew install python3

# Install Go
brew install go