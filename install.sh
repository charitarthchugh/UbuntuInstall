#!/bin/bash
sudo apt install figlet lolcat -y
figlet -c "2CC Ubuntu Install Script Start" | lolcat
sudo apt update -y
sudo apt upgrade -y
# Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.vim/colors
mkdir -p ~/.fonts/
# enable i386
# add repositories
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt update -y
sudo add-apt-repository -y ppa:teejee2008/ppa
if [ ! -f /etc/apt/sources.list.d/system76-ubuntu-pop-focal.list ];then #make sure that it is not pop-os
    sudo add-apt-repository ppa:mmstick76/alacritty
fi  
# install snapd-may fail
sudo apt install -y snapd
sudo apt install -y
sudo apt install -y  chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar samba python3-psutil cmake nodejs nodejs-typescript
#Homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install gcc topgrade tldr gh firebase-cli bpytop
#Handy little programs
npm install -g undollar carbon-now-cli
#main package install
sudo apt install -y timeshift python2 python3 playonlinux thunar gnome-tweak-tool vlc gimp geary lollypop 
sudo apt install -y gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils openssh-server
sudo apt install -y gnome-themes-extra appimagelauncher
sudo apt install -y flatpak flameshot vim bashtop trash-cli python-is-python3 python-nautilus
# Download Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# Download VS Code
wget -q "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo dpkg -i *.deb
sudo apt-get install --fix-missing --fix-broken && trash *deb # fix any missing packages, trash if sucessful
#IntelliJ Install
sudo snap install intellij-idea-ultimate --classic
# Java JDK install and maven
sudo apt install -y default-jdk default-jre openjdk-8-jdk openjdk-11-jdk maven
#Fonts Section
sudo apt install -y fonts-lato fonts-materialdesignicons-webfont fonts-powerline font-manager msttcorefonts fonts-wine
git clone --depth 1 https://github.com/google/fonts.git ~/.fonts/Google
git clone --depth 1 https://github.com/JetBrains/JetBrainsMono ~/.fonts/Jetbrains
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts ~/.fonts/NerdFonts
fc-cache -r -v
#Flatpak Section 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Dotfiles
sudo apt install -y zsh autojump
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim #Vundle
mkdir -p ~/.vim/colors
cd ~/.vim/colors && wget https://raw.githubusercontent.com/connorholyday/vim-snazzy/master/colors/snazzy.vim
cd ~
vim +PluginInstall +qall #Install vim plugnins
python ~/.vim/bundle/youcompleteme/install.sh --all
#Wine Section
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update -y
sudo apt install -y --install-recommends winehq-staging
# GTK Theme
cd ~/Dev/GitClone
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
git clone https://github.com/vinceliuice/WhiteSur-icon-theme 
https://github.com/vinceliuice/WhiteSur-cursors
sudo ./WhiteSur-gtk-theme/install.sh -g -c dark -s 200
./WhiteSur-icon-theme/install.sh
./WhiteSur-cursors/install.sh
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface cursor-theme "WhiteSur-dark"
cd ~
# Final Steps
sudo apt update -y
sudo apt upgrade -y

figlet -c "2CC Ubuntu Install Script End"| lolcat
sudo apt autoremove -y --purge
figlet -c "Rebooting in 1 minute"
sleep 1m && reboot
