#Java Windscribe Play on linux Intellij chrome vivaldi need to be downloaded, 
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris
sudo add-apt-repository universe
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt install gnome-shell-extensions chrome-gnome-shell linuxbrew-wrapper exfat-fuse exfat-utils p7zip-full p7zip-rar -y
brew install hello gcc python3 python2 youtube-dl android-platform-tools android-messages git ffmpeg ffsend adoptopenjdk openjdk@12 howdoi
sudo apt install timeshift ukuu lutris python2 python3 chromium steam playonlinux thunar lynx vivaldi-stable gnome-tweak-tool virtualbox geary gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme flatpak gnome-software-plugin-flatpak openjdk-11-jre openjdk-11-jdk gnome-themes-extra kalzium tillix gs-connect typecatcher -y
sudo snap install flameshot atom intellij-ultimate-classic kotlin code --classic
sudo snap install gimp libreoffice vlc termius-app docker 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gtk.Gtk3theme.Materia{,-dark,-light}{,-compact}
sudo apt update
sudo apt upgrade
sudo apt autoremove
