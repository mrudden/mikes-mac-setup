#!/bin/bash

echo "Starting setup procedure!"

# Install Homebrew if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update

# Brew formulae
brew_formulae=()
# Brew Cask formulae
brew_cask_formulae=()

# Pseudocode: for formula in brew_formulae: brew install $formula

# Pseudocode: for formula in brew_cask_formulae: brew cask install $formula

# Java notes for homebrew - from "brew info java"
#For the system Java wrappers to find this JDK, symlink it with
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

#openjdk is keg-only, which means it was not symlinked into /usr/local,
#because it shadows the macOS `java` wrapper.

#If you need to have openjdk first in your PATH run:
echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

#For compilers to find openjdk you may need to set:
export CPPFLAGS="-I/usr/local/opt/openjdk/include"