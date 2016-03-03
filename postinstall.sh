### Everyone
sudo apt-get install -y gimp
sudo apt-get install -y htop
sudo apt-get install -y inkscape
sudo apt-get install -y redshift redshift-gtk
sudo apt-get install -y virtualbox-qt
sudo apt-get install -y vlc



### Gaming
sudo apt-get install -y steam # Prompts license agreement. TODO: Send <tab>Enter
# TODO: Run steam to run updater gui



### Developers
sudo apt-get install -y cmake
sudo apt-get install -y git
sudo apt-get install -y pgadmin3
sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y python-pip
sudo apt-get install -y sqlitebrowser
sudo apt-get install -y wireshark # Prompt to create wireshark user group (default: no). TODO: Send Enter

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
wget https://packagecontrol.io/Package%20Control.sublime-package -P "~/.config/sublime-text-3/Installed Packages/"



### User
sudo apt-get install -y livestreamer
sudo apt-get install -y inotify-tools

## NodeJS Packages



### Desktop



