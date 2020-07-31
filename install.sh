#!/bin/bash
sudo apt install figlet lolcat -y
figlet -c "2CC Ubuntu Install Script Start" | lolcat
sudo apt update -y
sudo apt upgrade -y
# Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.config/tilix/schemes/
mkdir -p ~/.vim/colors
# Tilix Themes - so I can set up tilix quicker.
wget https://github.com/clrxbl/tilix-snazzy/raw/master/snazzy.json -O ~/.config/tilix/schemes/snazzy.json
mkdir -p ~/.fonts/
# enable i386
sudo dpkg --add-architecture i386
# add repositories
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt update -y
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:bashtop-monitor/bashtop
# install snapd-may fail
sudo apt install -y snapd
sudo apt install -y python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 git hub gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl file gcc build-essential
sudo apt install -y gnome-shell-extensions chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar samba
#Homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
brew install gcc python youtube-dl npm
brew install  topgrade 
#Handy little program
npm install -g undollar carbon-now-cli
#main package install
sudo apt install -y timeshift python2 python3 playonlinux thunar gnome-tweak-tool vlc gimp geary lollypop
sudo apt install -y gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils openssh-server
sudo apt install -y gnome-software-plugin-flatpak gnome-themes-extra  #Does not work at all in pop
sudo apt install -y flatpak tilix flameshot vim bashtop  trash-cli github-desktop python-is-python3 python-nautilus
#Install Browsers + oracle jdk
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i *.deb
sudo apt-get install --fix-missing # fix any 
#IntelliJ Install
sudo snap install  intellij-idea-ultimate --classic
#VS Codium install 
sudo snap install code --classic
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
# Dotfiles
sudo apt install -y zsh autojump
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim# Vundle
vim +PluginInstall +qall #Hopefuly install vim plugnins
#Wine Section
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update -y
sudo apt install -y --install-recommends winehq-staging
# Final Steps
sudo apt update -y
sudo apt upgrade -y
figlet -c "2CC Ubuntu Install Script End"| lolcat
sudo apt autoremove -y
