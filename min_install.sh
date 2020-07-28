#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
alias APTI ="sudo apt install -y"
alias APTREPO = "sudo add-apt-repository -y"
alias snapI= "sudo snap install"
sudo dpkg --add-architecture i386
#Repositories
APTREPO ppa:teejee2008/ppa
APTREPO ppa:bashtop-monitor/bashtop
# Main apt install
APTI timeshift bashtop
APTI curl gcc file build-essential hub default-jdk default-jre flatpak zsh exfat-fuse exfat-utils p7zip-full p7zip-rar 
APTI unzip tar snapd trash-cli vim openssh-server unzip 
#Install brew
bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
git -C "(brew --repo homebrew/core)" fetch --unshallow
# brew apps
brew install gcc python npm topgrade 
brew install antibody
#flatpak setup
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Dotfiles
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim# Vundle
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"