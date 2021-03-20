#!/usr/bin/env bash
# Update all installed packages
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
# Add repositories for apt
sudo apt install apt-transport-https curl gnupg software-properties-common # required to do before main application install
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
source /etc/os-release
if [ ! $ID = 'pop' ];then #make sure that it is not pop-os
    sudo add-apt-repository ppa:mmstick76/alacritty
else
    echo "System76 Packages Alacritty, not adding ppa"
fi  
# Wine
# Enable 32 bit architecture
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ '$VERSION_CODENAME' main'
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo apt update -y
# Programs to install via apt
xargs --arg-file="~/fre.sh/apt_packages.txt" sudo apt install -y

# Snap section- cannot use loop for snaps that need --classic
sudo snap install --classic intellij-idea-ultimate
sudo snap install --classic pycharm-professional
sudo snap install --classic code
sudo snap install --classic codium

# Set GTK Themes
mkdir -p $HOME/Dev/GTK
cd $HOME/Dev/GTK
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
git clone https://github.com/vinceliuice/WhiteSur-icon-theme 
git clone https://github.com/vinceliuice/WhiteSur-cursors
sudo ./WhiteSur-gtk-theme/install.sh -g -c dark -i ubuntu
./WhiteSur-icon-theme/install.sh 
./WhiteSur-cursors/install.sh
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
# gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark" # do not use theme by default because it will render system unusible if requirements are not satisfied
gsettings set org.gnome.desktop.interface cursor-theme "WhiteSur-dark"
# sudo flatpak override --filesystem=/usr/share/themes/WhiteSur-dark/
cd $HOME
# Setup dotfiles
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
git clone --recursive https://github.com/charitarthchugh/dotfiles $HOME/dotfiles/
cd $HOME/dotfiles/
./install
cd ~
# Add Flatpak repositories
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Programs to install via Homebrew(brew)
brew bundle --file ~/fre.sh/Brewfile --no-lock
# programs to install via npm
npm i -g carbon-now-cli
# Install fonts
git clone --depth 1 https://github.com/google/fonts.git $HOME/.local/share/fonts/Google
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts $HOME/.local/share/fonts/NerdFonts
fc-cache -r -v
