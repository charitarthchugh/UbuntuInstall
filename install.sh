#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install figlet -y
figlet -c "2CC Ubuntu Install Script Start"
# Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.config/tilix/schemes/
mkdir -p ~/.fonts/
alias  = "sudo add-apt-repository -y"
alias = "sudo snap install"
# enable i386
sudo dpkg --add-architecture i386
# add repositories
sudo apt update -y
APTREPO ppa:teejee2008/ppa
APTREPO ppa:bashtop-monitor/bashtop
# install snapd-may fail
sudo apt install -y snapd
sudo apt install -y python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 git hub gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl file gcc build-essential
sudo apt install -y gnome-shell-extensions chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar samba
#Homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
brew install gcc python youtube-dl npm
brew install  topgrade 
brew install antibody
#Handy little program
npm install -g undollar
#main package install
sudo apt install -y timeshift python2 python3 playonlinux thunar gnome-tweak-tool vlc gimp geary lollypop
sudo apt install -y gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils openssh-server
sudo apt install -y gnome-software-plugin-flatpak gnome-themes-extra  #Does not work at all in pop
sudo apt install -y flatpak tilix flameshot vim bashtop  trash-cli github-desktop
#Install Browsers + oracle jdk
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i *.deb
sudo apt-get install --fix-missing # fix any 
#IntelliJ Install
snapI intellij-idea-ultimate --classic
#VS Codium install 
sudo snap install codium--classic
# Java JDK install and maven
sudo apt install -y default-jdk default-jre openjdk-14-jdk openjdk-13-jdk openjdk-8-jdk  openjdk-11-jdk maven
#Fonts Section
sudo apt install -y fonts-noto fonts-lato fonts-roboto fonts-materialdesignicons-webfont fonts-powerline font-manager msttcorefonts fonts-indic fonts-wine
git clone https://github.com/google/fonts.git ~/.fonts/Google
git clone https://github.com/potyt/fonts.git ~/.fonts/potyt
git clone https://github.com/JetBrains/JetBrainsMono.git ~/.fonts/Jetbrains
git clone https://github.com/theleagueof/raleway ~/.fonts/Raleway
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts ~/.fonts/NerdFonts
fc-cache -f -v
#Flatpak Section 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Tilix Themes
wget -qO "~/.config/tilix/schemes/snazzy.json" https://git.io/JfKp7
# Dotfiles
sudo apt install -y zsh
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim# Vundle
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"#Pure Prompt, npm does not work all the time
#Wine Section
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update -y
sudo apt install -y --install-recommends winehq-staging
sudo update-alternatives --config x-terminal-emulator
# Final Steps
sudo apt update -y
sudo apt upgrade -y
figlet -c "2CC Ubuntu Install Script End"
sudo apt autoremove -y
