sudo apt update -y
sudo apt upgrade -y
sudo apt install figlet -y
figlet -c "2CC Ubuntu Install Script Start"
figlet -c "2CC Ubuntu Install Script"
sudo apt remove figlet
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris
sudo add-apt-repository universe
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo 'deb https://repo.windscribe.com/ubuntu bionic main'
sudo apt install gnome-shell-extensions chrome-gnome-shell linuxbrew-wrapper exfat-fuse exfat-utils p7zip-full p7zip-rar -y
echo "export Path=/usr/local/bin:$PATH" >> ~/.bash_profile && source  ~/.bash_profile
git -C "(brew --repo homebrew/core)" fetch --unshallow
brew install hello gcc python python@2 youtube-dl git ffsend adoptopenjdk openjdk@12 howdoi scrcpy 
sudo apt install timeshift windscribe-cli lutris python2 python3 steam playonlinux thunar gnome-tweak-tool virtualbox geary gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme flatpak gnome-software-plugin-flatpak gnome-themes-extra tilix typecatcher adb -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.9.1705.41-1_amd64.deb
sudo dpkg -i vivaldi-stable_2.9.1705.41-1_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://download.oracle.com/otn-pub/java/jdk/13.0.1+9/cec27d702aa74d5a8630c65ae61e4305/jdk-13.0.1_linux-x64_bin.deb
sudo dpkg -i jdk-13.0.1_linux-x64_bin.deb
sudo snap install flameshot --classic 
sudo snap install intellij-idea-ultimate --classic
sudo snap install kotlin --classic
sudo snap install code --classic
sudo snap install gimp vlc termius-app chromium
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
figlet -c "2CC Ubuntu Install Script End"
sudo apt remove figlet
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
echo https://extensions.gnome.org/extension/1319/gsconnect/
