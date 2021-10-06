#!/bin/sh

echo "=== Starting setup procedure! ==="

# Install Homebrew if not installed
if brew | grep "command not found"; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else 
 echo "Homebrew already installed. Skipping installation."
fi

brew update

# Add Brew Cask for Fonts
brew tap homebrew/cask-fonts

# Brew formulae
brew_formulae=(
  cask
  neofetch
  python
  go
  wget
  terraform
  node@14
  hugo
  woff2
  java
  cowsay
  figlet
  youtube-dl
  )

# Brew Cask formulae
brew_cask_formulae=(
  firefox
  iterm2
  visual-studio-code
  github
  docker
  vagrant
  osquery
  postman
  daisydisk
  balenaetcher
  unetbootin
  bartender
  #BetterTouchTool
  #dropbox
  discord
  signal
  zoom
  spotify
  gimp
  makemkv
  handbrake
  vlc
  steam
  battle-net
  )

# Pseudocode: for formula in brew_formulae: brew install $formula
echo "== Installing homebrew formulae =="
for i in "${brew_formulae[@]}"
do
	brew install $i
done

# Pseudocode: for formula in brew_cask_formulae: brew cask install $formula
echo "== Installing homebrew cask formulae =="
for i in "${brew_cask_formulae[@]}"
do
	brew install --cask $i
done

# Node install notes
#node@14 is keg-only, which means it was not symlinked into /usr/local,
#because this is an alternate version of another formula.

#If you need to have node@14 first in your PATH, run:
echo 'export PATH="/usr/local/opt/node@14/bin:$PATH"' >> ~/.zshrc
#For compilers to find node@14 you may need to set:
export LDFLAGS="-L/usr/local/opt/node@14/lib"
export CPPFLAGS="-I/usr/local/opt/node@14/include"

# Java notes for homebrew - from "brew info java"
#For the system Java wrappers to find this JDK, symlink it with
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

#openjdk is keg-only, which means it was not symlinked into /usr/local,
#because it shadows the macOS `java` wrapper.

#If you need to have openjdk first in your PATH run:
echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

#For compilers to find openjdk you may need to set:
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

echo "=== Setup complete! ==="
