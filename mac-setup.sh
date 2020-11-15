#!/bin/bash

echo "Starting setup procedure!"

# Install Homebrew if not installed
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Python 3
brew install python

# Install Go
brew install go