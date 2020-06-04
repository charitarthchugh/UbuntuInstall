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
alias snapI= "snapI "
# enable i386
sudo dpkg --add-architecture i386
# add repositories
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository universe -y
sudo add-apt-repository ppa:tista/adapta -y
sudo apt-add-repository ppa:noobslab/deepin-sc -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo add-apt-repository ppa:bashtop-monitor/bashtop
sudo dpkg --add-architecture i386 #if it is not enabled already
# install snapd-may fail
APTI snapd
APTI python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 git hub gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl file gcc build-essential
APTI gnome-shell-extensions chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar
#homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
echo 'export PATH="/home/2p2107032/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
brew install hello
echo "export Path=/usr/local/bin:$PATH" >> ~/.bash_profile && source  ~/.bash_profile#homebrew post install
git -C "(brew --repo homebrew/core)" fetch --unshallow
brew install gcc python python@2 youtube-dl ffsend howdoi scrcpy maven kotlin
brew install phoronix-test-suite topgrade
#main package install
APTI timeshift python2 python3 playonlinux thunar gnome-tweak-tool adapta vlc gimp darktable gdebi npm glances geary
APTI gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme
APTI flatpak gnome-software-plugin-flatpak gnome-themes-extra tilix flameshot vim nano bashtop
#Install Browsers + oracle jdk
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.9.1705.41-1_amd64.deb
wget https://www.termius.com/download/linux/Termius.deb
wget https://atom.io/download/deb
wget "https://download.oracle.com/otn-pub/java/jdk/13.0.2+8/d4173c853231432d94f001e99d882ca7/jdk-13.0.2_linux-x64_bin.deb"
sudo dpkg -i *.deb
#IntelliJ download
snapI intellij-idea-ultimate --classic
# Java JDK install
APTI default-jdk default-jre openjdk-14-jdk openjdk-13-jdk openjdk-8-jdk openjdk-8-jre openjdk-11-jdk openjfx
APTI dart maven
#Fonts Section
APTI fonts-noto fonts-lato fonts-roboto fonts-materialdesignicons-webfont fonts-powerline typecatcher font-manager msttcorefonts fonts-indic fonts-wine
git clone https://github.com/google/fonts.git ~/.fonts/Google
git clone https://github.com/potyt/fonts.git ~/.fonts/potyt
git clone https://github.com/JetBrains/JetBrainsMono.git ~/.fonts/Jetbrains
git clone https://github.com/theleagueof/raleway ~/.fonts/Raleway
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts ~/NerdFonts
cd NerdFonts
./install.sh
cd ~
npm install --save @fortawesome/fontawesome-free
fc-cache -f -v
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Atom
apm install java-plus ide-java java-import-wiz atom-material-ui snazzy-syntax java-generator atom-maven deepcode formatter-clangformat
# Tilix Themes
wget -qO "~/.config/tilix/schemes/snazzy.json" https://git.io/JfKp7
wget -qO "~/.config/tilix/schemes/atom.json" https://git.io/v7Q27
wget -qO "~/.config/tilix/schemes/flatty.json" https://git.io/vFkVc
wget -qO "~/.config/tilix/schemes/monokai.json" https://git.io/v7Qad
wget -qO "~/.config/tilix/schemes/one-dark.json" https://git.io/v7Qaw
# Zsh section
sudo apt install zsh zsh-syntax-highlighting antigen autojump -y
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"#Pure Prompt, npm does not work all the time
#get my alaisrc
./usr/share/autojump/autojump.sh#autojump init script
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
