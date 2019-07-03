Add Wine from Store, Java needs to be downloaded
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris
sudo add-apt-repository universe
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo 'deb https://repo.windscribe.com/ubuntu zesty main'
sudo apt-get install windscribe-cli
sudo apt-get install build-essential curl file git
(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
brew install hello atom python3 python2 youtube-dl adobe-photoshop-lightroom android-platform-tools android-messages git android-studio android-sdk balenaetcher
sudo apt install timeshift ukuu lutris flameshot python2 python3 chromium steam playonlinux thunar lynx vivaldi-stablegnome-tweak-tool virtualbox geary
sudo apt install gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils
sudo apt install materia-gtk-theme flatpak gnome-software-plugin-flatpak intellij openjdk-11-jre gnome-themes-extra kalzium tillix gs-connect vlc typecatcher
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gtk.Gtk3theme.Materia{,-dark,-light}{,-compact}
sudo apt update
sudo apt upgrade
sudo apt autoremove
