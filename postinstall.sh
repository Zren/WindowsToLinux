### Everyone
sudo apt-get install -y gimp
sudo apt-get install -y htop
sudo apt-get install -y inkscape
sudo apt-get install -y redshift redshift-gtk
sudo apt-get install -y shutter
sudo apt-get install -y virtualbox-qt
sudo apt-get install -y vlc

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


## NodeJS Packages

## Python Packages
pip3 install flask
pip3 install requests



### Desktop



