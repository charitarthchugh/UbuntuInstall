#!/usr/bin/env bash
# Enable 32 bit architecture
sudo dpkg --add-architecture i386
# Update all installed packages
sudo apt update -y
sudo apt upgrade -y
# Add repositories for apt
sudo apt install apt-transport-https curl gnupg # required to do before main application install

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

if [ ! -f /etc/apt/sources.list.d/system76-ubuntu-pop-focal.list ];then #make sure that it is not pop-os
    sudo add-apt-repository ppa:mmstick76/alacritty
fi  
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt update  
# Programs to install via apt
while read package; do 
    sudo apt install -y "$package"
    if [ $? -eq 0]; then
        echo "$package is installed from apt!"
    else
        echo "$package" >> apt_failed.text
    fi
done < apt_packages.txt 

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
sudo ./WhiteSur-gtk-theme/install.sh -g -c dark -s 200
./WhiteSur-icon-theme/install.sh 
./WhiteSur-cursors/install.sh
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface cursor-theme "WhiteSur-dark"
cd $HOME
# Setup dotfiles
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
git clone https://github.com/charitarthchugh/dotfiles $HOME/dotfiles/
cp -s $HOME/dotfiles/.zshrc $HOME
cp -s $HOME/dotfiles/.vimrc $HOME
cp -s $HOME/dotfiles/.bashrc $HOME
#   Vim Setup
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim #Vundle
mkdir -p $HOME/.vim/colors
cd $HOME/.vim/colors
wget https://raw.githubusercontent.com/connorholyday/vim-snazzy/master/colors/snazzy.vim
cd $HOME
vim +PluginInstall +qall #Install vim plugnins
/usr/bin/python3 $HOME/.vim/bundle/youcompleteme/install.sh --all
# Add Flatpak repositories
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Programs to install via Homebrew(brew)
while read formulae; do 
    exec /home/linuxbrew/.linuxbrew/bin/brew install "$formulae"
    if [ $? -eq 0]; then
        echo "$formulae is installed from Brew!"
    else
        echo "$formulae" >> brew_failed.text
    fi
done < brew_formulae.txt 

# Install fonts
git clone --depth 1 https://github.com/google/fonts.git $HOME/.fonts/Google
git clone --depth 1 https://github.com/JetBrains/JetBrainsMono $HOME/.fonts/Jetbrains
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts $HOME/.fonts/NerdFonts
fc-cache -r -v
# Quick Git Config
git config --global init.defaultBranch main
git config --global credential.helper store
