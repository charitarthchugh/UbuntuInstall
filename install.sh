sudo apt update -y
sudo apt upgrade -y
sudo apt install figlet -y
figlet -c "2CC Ubuntu Install Script Start"
#Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.config/tilix/schemes
mkdir ~/.fonts
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository universe -y
sudo add-apt-repository ppa:tista/adapta -y
sudo apt-add-repository ppa:noobslab/deepin-sc -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo dpkg --add-architecture i386 #if it is not enabled already
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_19.04/amd64/libfaudio0_20.01-0~disco_amd64.deb #dependency for Wine
sudo apt install python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl -y
sudo apt install gnome-shell-extensions chrome-gnome-shell linuxbrew-wrapper exfat-fuse exfat-utils p7zip-full p7zip-rar peazip -y
echo "export Path=/usr/local/bin:$PATH" >> ~/.bash_profile && source  ~/.bash_profile#homebrew post install
git -C "(brew --repo homebrew/core)" fetch --unshallow
brew install gcc python python@2 youtube-dl git ffsend adoptopenjdk openjdk@12 howdoi scrcpy maven oracle-jdk-javadoc 
#main package install
sudo apt install timeshift lutris python2 python3 steam playonlinux thunar gnome-tweak-tool adapta gdebi npm autojump virtualbox geary gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme flatpak gnome-software-plugin-flatpak gnome-themes-extra tilix flameshot vim nano zsh zsh-syntax-highlighting -y
#Install Browsers + oracle jdk
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.9.1705.41-1_amd64.deb
wget https://download.oracle.com/otn-pub/java/jdk/13.0.1+9/cec27d702aa74d5a8630c65ae61e4305/jdk-13.0.1_linux-x64_bin.deb
sudo dpkg -i *.deb
sudo apt install -y default-jdk default-jre#for openjdk/jre through apt
# install snaps- for development
sudo snap install intellij-idea-ultimate --classic
sudo snap install kotlin --classic
sudo snap install code --classic
sudo snap install atom --classic
sudo snap install gimp vlc termius-app chromium darktable 
#Fonts Section
sudo apt install -y fonts-noto fonts-lato fonts-roboto fonts-materialdesignicons-webfont fonts-hack-otf fonts-powerline typecatcher fonts-firacode font-manager msttcorefonts fonts-indic
curl -L https://github.com/google/fonts/tarball/master -o /tmp/master.tar.gz
mkdir -p /tmp/google-fonts/fonts
tar -zxf /tmp/master.tar.gz -C /tmp/google-fonts/fonts
sudo find /tmp/goog-fonts/fonts/ -type f -name "*.ttf" -exec cp {} ~/.fonts \;
git clone https://github.com/potyt/fonts.git ~/.fonts/
git clone https://github.com/ryanoasis/nerd-fonts.git ~/.fonts/

fc-cache -f -v
rm -f /tmp/master.tar.gz
rm -rf /tmp/google-fonts
./usr/share/autojump/autojump.sh#autojump init script
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
apm install terminal-plus java-plus ide-java java-import-wiz atom-material-ui snazzy-syntax java-generator atom-maven deepcode formatter-clangformat
#tilix themes
cd ~/.config/tilix/schemes/
wget https://github.com/clrxbl/tilix-snazzy/raw/master/snazzy.json
wget -qO $HOME"/.config/tilix/schemes/atom.json" https://git.io/v7Q27
wget -qO $HOME"/.config/tilix/schemes/flatty.json" https://git.io/vFkVc
wget -qO $HOME"/.config/tilix/schemes/monokai.json" https://git.io/v7Qad
wget -qO $HOME"/.config/tilix/schemes/one-dark.json" https://git.io/v7Qaw
cd $HOME
# Zsh section
https://raw.githubusercontent.com/charitarthchugh/UbuntuInstall/master/.zshrc
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"#Pure Prompt, npm does not work all the time
wget https://raw.githubusercontent.com/charitarthchugh/UbuntuInstall/master/aliasrc -O ~/.zsh/aliasrc #get my alaisrc
sudo apt update -y
sudo apt upgrade -y
figlet -c "2CC Ubuntu Install Script End"
sudo apt autoremove -y
firefox https://extensions.gnome.org/extension/1319/gsconnect/
chrome https://extensions.gnome.org/extension/1319/gsconnect/

