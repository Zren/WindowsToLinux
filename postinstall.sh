### Everyone
sudo apt-get install -y comix
sudo apt-get install -y gimp
sudo apt-get install -y htop
sudo apt-get install -y inkscape
sudo apt-get install -y p7zip-full p7zip-rar
sudo apt-get install -y redshift
sudo apt-get install -y scrot
sudo apt-get install -y unrar
sudo apt-get install -y virtualbox-qt
sudo apt-get install -y vlc
sudo apt-get install -y xbindkeys
sudo apt-get install -y xdotool

## Chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

## Calibre
# https://calibre-ebook.com/download_linux (install to ~/calibre-bin/ and create custom .desktop)
wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | python -c "import sys; main=lambda x,y:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main('~/calibre-bin', True)"



## Weather Widgets
sudo apt-get install -y qml-module-qtquick-xmllistmodel libqt5qml-graphicaleffects

## Chrome
URL='https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'




### Gaming
## Steam
sudo apt-get install -y steam # Prompts license agreement. TODO: Send <tab>Enter
echo 'STEAM_FRAME_FORCE_CLOSE DEFAULT=1' >> ~/.pam_environment # Close to Tray (https://github.com/ValveSoftware/steam-for-linux/issues/1025)
# TODO: Run steam to run updater gui



### Developers
sudo apt-get install -y cmake
sudo apt-get install -y curl
sudo apt-get install -y pgadmin3
sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y qt5-default qtdeclarative5-dev
sudo apt-get install -y qtcreator
sudo apt-get install -y sqlitebrowser
sudo apt-get install -y wireshark # Prompt to create wireshark user group (default: no). TODO: Send Enter

## Python
sudo apt-get install -y python-pip python3-pip
sudo easy_install3 -U pip # http://stackoverflow.com/questions/27341064/how-do-i-fix-importerror-cannot-import-name-incompleteread

## Git
sudo apt-get install -y git
git config --global push.default matching

## Heroku
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku

## NodeJS
# https://nodejs.org/en/download/package-manager/
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

## Sublime Text
# http://askubuntu.com/questions/172698/how-do-i-install-sublime-text-2-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
# https://packagecontrol.io/installation
wget https://packagecontrol.io/Package%20Control.sublime-package -P ~/.config/sublime-text-3/Installed Packages/



### User
sudo apt-get install -y livestreamer
sudo apt-get install -y inotify-tools

# Quassel
sudo apt-get install -y quassel-core quassel-client
wget https://gist.githubusercontent.com/Zren/e91ad5197f9d6b6d410f/raw/DarkSolarized.qss -P ~/.config/quassel-irc.org/
wget https://gist.githubusercontent.com/Zren/2779042/raw/DarkMonokai.qss -P ~/.config/quassel-irc.org/

# scrot + nixshot
pip3 install imgurpython # Required by: nixshot
mkdir -p ~/Pictures/Screenshots
mkdir ~/bin
#wget https://github.com/Zren/nixshot/blob/master/bin/captureregion -O ~/bin/captureregion
wget https://github.com/Zren/nixshot/blob/master/bin/captureregion -O ~/bin/capturescreen
wget https://github.com/Zren/nixshot/blob/master/bin/captureregion -O ~/bin/uploadscreenshot

# xbindkeys (to bind printscreen since kde shortcuts lag) (and to remap mouse buttons)
cp ./home/chris/.xbindkeysrc ~/.xbindkeysrc
xbindkeys



## NodeJS Packages


## Python Packages
pip3 install flask
pip3 install requests




### Desktop
git clone 

