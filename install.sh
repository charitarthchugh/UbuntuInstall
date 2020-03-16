sudo apt update -y
sudo apt upgrade -y
sudo apt install figlet -y
figlet -c "2CC Ubuntu Install Script Start"
#Create directories
mkdir -p "$HOME/.zsh"
mkdir -p ~/.config/tilix/schemes
mkdir ~/.fonts/
#enable i386
sudo dpkg --add-architecture i386 
#add repositories
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository universe -y
sudo add-apt-repository ppa:tista/adapta -y
sudo apt-add-repository ppa:noobslab/deepin-sc -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo dpkg --add-architecture i386 #if it is not enabled already
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_19.04/amd64/libfaudio0_20.01-0~disco_amd64.deb #dependency for Wine-libfaudio
sudo apt install python-nautilus gir1.2-nautilus-3.0 gir1.2-ebook-1.2 gir1.2-ebookcontacts-1.2 gir1.2-edataserver-1.2 curl file gcc build-essential -y
sudo apt install gnome-shell-extensions chrome-gnome-shell exfat-fuse exfat-utils p7zip-full p7zip-rar peazip -y
#homebrew section
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
echo 'export PATH="/home/2p2107032/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
brew
echo "export Path=/usr/local/bin:$PATH" >> ~/.bash_profile && source  ~/.bash_profile#homebrew post install
git -C "(brew --repo homebrew/core)" fetch --unshallow
brew install gcc python python@2 youtube-dl git ffsend openjdk@10 openjdk howdoi scrcpy maven oracle-jdk-javadoc kotlin
#main package install
sudo apt install timeshift lutris python2 python3 playonlinux thunar gnome-tweak-tool adapta vlc gimp darktable gdebi npm chromium autojump glances geary gnome-themes-standard gtk2-engines-murrine libglib2.0-dev libxml2-utils materia-gtk-theme flatpak gnome-software-plugin-flatpak gnome-themes-extra tilix flameshot vim nano  -y
#Install Browsers + oracle jdk
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget 
wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.9.1705.41-1_amd64.deb
wget https://www.termius.com/download/linux/Termius.deb
wget https://atom.io/download/deb
wget "https://download.oracle.com/otn-pub/java/jdk/13.0.2+8/d4173c853231432d94f001e99d882ca7/jdk-13.0.2_linux-x64_bin.deb"
sudo dpkg -i *.deb
#IntelliJ download
wget https://download.jetbrains.com/idea/ideaIU-2019.3.3.tar.gz
tar -xzf ideaU-2019.3.3.tar.gz
sudo apt install -y default-jdk default-jre#for openjdk/jre through apt
# install snapd-may fail
sudo apt install -y snapd 
sudo apt install -y gnome-boxes dart maven gradle
#Fonts Section
sudo apt install -y fonts-noto fonts-lato fonts-roboto fonts-materialdesignicons-webfont fonts-hack-otf fonts-powerline typecatcher fonts-firacode font-manager msttcorefonts fonts-indic fonts-wine
git clone https://github.com/google/fonts.git ~/.fonts/Google
git clone https://github.com/potyt/fonts.git ~/.fonts/potyt
git clone https://github.com/JetBrains/JetBrainsMono.git ~/.fonts/Jetbrains
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SpaceMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ShareTechMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Noto.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Mononoki.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monofur.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Go-Mono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ProggyClean.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/VictorMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CodeNewRoman.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/BitstreamVeraSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AnonymousPro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Arimo.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AurulentSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Cousine.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DaddyTimeMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Gohu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/iA-Writer.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Inconsolata.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/InconsolataGo.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Lekton.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/MPlus.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ProFont.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/ProggyClean.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Overpass.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Terminus.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip
unzip *.zip
rm *.zip -f
mv *.otf ~/.fonts/
mv *.ttf ~/.fonts/
git clone https://github.com/theleagueof/raleway ~/.fonts/Raleway
npm install --save @fortawesome/fontawesome-free
cd ~
fc-cache -f -v
./usr/share/autojump/autojump.sh#autojump init script
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#Atom+ sublime install
apm install terminal-plus java-plus ide-java java-import-wiz atom-material-ui snazzy-syntax java-generator atom-maven deepcode formatter-clangformat
#tilix
cd ~/.config/tilix/schemes/
wget -q https://github.com/clrxbl/tilix-snazzy/raw/master/snazzy.json
wget -qO "~/.config/tilix/schemes/atom.json" https://git.io/v7Q27
wget -qO "~/.config/tilix/schemes/flatty.json" https://git.io/vFkVc
wget -qO "~/.config/tilix/schemes/monokai.json" https://git.io/v7Qad
wget -qO "~/.config/tilix/schemes/one-dark.json" https://git.io/v7Qaw
cd ~
# Zsh section
sudo apt install zsh zsh-syntax-highlighting antigen -y
https://raw.githubusercontent.com/charitarthchugh/UbuntuInstall/master/.zshrc
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"#Pure Prompt, npm does not work all the time
wget https://raw.githubusercontent.com/charitarthchugh/UbuntuInstall/master/aliasrc -O ~/.zsh/aliasrc #get my alaisrc
#Wine Section
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main
sudo apt update -y
sudo apt install --install-recommends -y winehq-staging
sudo apt update -y 
sudo apt install --install-recommends -y winehq-staging
sudo update-alternatives --config x-terminal-emulator
#Final Steps
sudo apt update -y
sudo apt upgrade -y
figlet -c "2CC Ubuntu Install Script End"
sudo apt autoremove -y
firefox https://extensions.gnome.org/extension/1319/gsconnect/
chrome https://extensions.gnome.org/extension/1319/gsconnect/
#Intellij install
cd ~/ideaIU-2019.3.3/idea-IU-193.6494.35/bin
./idea.sh
cd ~
