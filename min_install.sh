#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo dpkg --add-architecture i386
#Repositories
sudo add-apt-repository -y ppa:teejee2008/ppa
# Main apt install
sudo apt install snapd
sudo apt install -y timeshift
sudo apt install -y curl gcc file build-essential hub lolcat default-jdk default-jre flatpak zsh exfat-fuse exfat-utils p7zip-full p7zip-rar
sudo apt install -y unzip tar snapd trash-cli vim openssh-server npm golang python3-dev cmake npm python3-psutil python3-pip
#Install brew
bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
git -C "(brew --repo homebrew/core)" fetch --unshallow
# brew apps
brew install gcc python npm topgrade
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
#flatpak setup
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Dotfiles
git clone https://github.com/charitarthchugh/dotfiles ~/dotfiles/
cp -s ~/dotfiles/.zshrc ~
cp -s ~/dotfiles/.vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim# Vundle
mkdir -p ~/.vim/colors
cd ~/.vim/colors && wget https://raw.githubusercontent.com/connorholyday/vim-snazzy/master/colors/snazzy.vim
cd ~
python ~/.vim/bundle/youcompleteme/install.sh --all
