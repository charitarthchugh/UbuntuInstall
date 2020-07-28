#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install figlet -y
figlet -c "2CC Ubuntu Install Script Start"
# Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.config/tilix/schemes
mkdir -p ~/.fonts/
mkdir NerdFonts
alias APTI ="sudo apt install -y"
alias APTREPO = "sudo add-apt-repository -y"
alias snapI= "sudo snap install"
# enable i386
sudo dpkg --add-architecture i386
# add repositories
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
APTREPO ppa:teejee2008/ppa
APTREPO ppa:lutris-team/lutris
APTREPO ppa:tista/adapta
APTREPO ppa:noobslab/deepin-sc
APTREPO ppa:bashtop-monitor/bashtop
# install snapd-may fail
APTI snapd
APTI python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 git hub gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl file gcc build-essential
APTI gnome-shell-extensions chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar
#Homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
git -C "(brew --repo homebrew/core)" fetch --unshallow
brew install gcc python youtube-dl scrcpy npm
brew install phoronix-test-suite topgrade 
brew install getantibody/tap/antibody
#Handy little program
npm install -g undollar
#main package install
APTI timeshift python2 python3 playonlinux thunar gnome-tweak-tool adapta vlc gimp geary lollypop
APTI gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme
APTI flatpak gnome-software-plugin-flatpak gnome-themes-extra tilix flameshot vim bashtop atom trash-cli
#Install Browsers + oracle jdk
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://downloads.vivaldi.com/stable/vivaldi-stable_2.9.1705.41-1_amd64.deb
wget -q "https://download.oracle.com/otn-pub/java/jdk/13.0.2+8/d4173c853231432d94f001e99d882ca7/jdk-13.0.2_linux-x64_bin.deb"
sudo dpkg -i *.deb
#IntelliJ download
snapI intellij-idea-ultimate --classic
# Java JDK install+dart and maven
APTI default-jdk default-jre openjdk-14-jdk openjdk-13-jdk openjdk-8-jdk openjdk-8-jre openjdk-11-jdk openjfx
APTI: maven
#Fonts Section
APTI fonts-noto fonts-lato fonts-roboto fonts-materialdesignicons-webfont fonts-powerline typecatcher font-manager msttcorefonts fonts-indic fonts-wine
git clone https://github.com/google/fonts.git ~/.fonts/Google
git clone https://github.com/potyt/fonts.git ~/.fonts/potyt
git clone https://github.com/JetBrains/JetBrainsMono.git ~/.fonts/Jetbrains
git clone https://github.com/theleagueof/raleway ~/.fonts/Raleway
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts ~/.fonts/NerdFonts
fc-cache -f -v
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Atom
apm install java-plus ide-java java-import-wiz atom-material-ui snazzy-syntax java-generator atom-maven deepcode formatter-clangformat
# Tilix Themes
wget -qO "~/.config/tilix/schemes/snazzy.json" https://git.io/JfKp7
# Dotfiles
APTI zsh zsh-syntax-highlighting 
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
APTI --install-recommends winehq-staging
sudo update-alternatives --config x-terminal-emulator
# Final Steps
sudo apt update -y
sudo apt upgrade -y
figlet -c "2CC Ubuntu Install Script End"
sudo apt autoremove -y
