# mikes-mac-setup

## Instructions

1. Install homebrew using the following command:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

2. Run `brew update`

3. Install the following tools using the method in their respected headers

## Tools/Applications

### Homebrew
* cask
* neofetch
* python
* go
* wget
* terraform
* node
* hugo
* woff2
* java
* zoom


### Cask
* firefox
* iterm2
* visual-studio-code
* github
* docker
* vagrant
* osquery
* postman
* daisydisk
* balenaetcher
* UNetbootin
* bartender
* #BetterTouchTool
* #dropbox
* discord
* #signal
* spotify
* #makemkv
* #handbrake
* #vlc
* steam
* battle-net


### Apple App Store
* XCode
* Apple Developer
* 1password
* Wipr
* Nord VPN
* Tooth Fairy
* Magnet
* Microsoft 365
* Microsoft Remote Desktop
* Trello
* #Transmit
* Slack
* Kindle


### Web
* [Turbo Boost Switcher Pro](https://gumroad.com/l/YeBQUF)
* [VMware Fusion Player](https://www.vmware.com/products/fusion/fusion-evaluation.html)
* [Unifi Network Controller](https://www.ui.com/download/unifi/)
* [Citrix Workspace](https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html)

## Run any additional steps needed
Java notes for homebrew - from "brew info java"

For the system Java wrappers to find this JDK, symlink it with:

`sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk`

If you need to have openjdk first in your PATH run:

`echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc`

For compilers to find openjdk you may need to set:

`export CPPFLAGS="-I/usr/local/opt/openjdk/include"`