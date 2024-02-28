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
  neofetch
  python
  go
  wget
  terraform
  woff2
  cowsay
  figlet
  youtube-dl
  nmap
  #podman
  #java
  deno
  openssh
  ansible
  )

# Brew Cask formulae
brew_cask_formulae=(
  iterm2
  firefox
  visual-studio-code
  github
  docker
  #osquery
  #postman
  daisydisk
  balenaetcher
  unetbootin
  bartender
  #BetterTouchTool
  #dropbox
  discord
  signal
  #zoom
  spotify
  makemkv
  handbrake
  vlc
  steam
  battle-net
  1password
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
# I no longer use brew to install node. Check out nvm:
#https://github.com/nvm-sh/nvm#installing-and-updating

# Java notes for homebrew - from "brew info java"
#For the system Java wrappers to find this JDK, symlink it with
#sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

#openjdk is keg-only, which means it was not symlinked into /usr/local,
#because it shadows the macOS `java` wrapper.

#If you need to have openjdk first in your PATH run:
#echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

#For compilers to find openjdk you may need to set:
#export CPPFLAGS="-I/usr/local/opt/openjdk/include"

echo "=== Setup complete! ==="
