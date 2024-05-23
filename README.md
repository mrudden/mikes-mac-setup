# mikes-mac-setup

## Instructions

1. Install homebrew using the following command:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

2. Run `brew update`

3. Install the following tools using the method in their respected headers

4. For easy mode on the homebrew installs, run this command after checking `mac-setup.sh` to see if it's what you really want: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mrudden/mikes-mac-setup/main/mac-setup.sh)"`

## Tools/Applications

### Homebrew
* neofetch
* python
* go
* wget
* terraform
* woff2
* cowsay
* figlet
* youtube-dl
* nmap
* #podman
* #java
* deno
* openssh
* ansible
* virt-manager
* mkvtoolnix

### Cask
* iterm2
* firefox
* visual-studio-code
* github
* docker
* #osquery
* #postman
* daisydisk
* balenaetcher
* UNetbootin
* bartender
* #BetterTouchTool
* #dropbox
* discord
* signal
* #zoom
* spotify
* makemkv
* handbrake
* vlc
* steam
* battle-net
* 1password
* raspberry-pi-imager
* plex


### Apple App Store
* XCode
* Apple Developer
* 1password for Safari
* Wipr
* Tooth Fairy
* Magnet
* Microsoft 365
* Microsoft Remote Desktop
* Trello
* #Transmit
* Slack
* Kindle
* [ASUSTOR Control Center](https://www.asustor.com/service/download_acc)

### Web
* [Turbo Boost Switcher Pro](https://gumroad.com/l/YeBQUF)
* [VMware Fusion Player](https://www.vmware.com/products/fusion/fusion-evaluation.html)
* [Citrix Workspace](https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html)
* [Podman Desktop](https://podman-desktop.io)
* [Xnapper](https://xnapper.com)

## Run any additional steps needed
Java notes for homebrew - from "brew info java"

For the system Java wrappers to find this JDK, symlink it with:

`sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk`

If you need to have openjdk first in your PATH run:

`echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc`

For compilers to find openjdk you may need to set:

`export CPPFLAGS="-I/usr/local/opt/openjdk/include"`
