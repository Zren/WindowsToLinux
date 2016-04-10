# `postinstall.sh` Todo List

  
* Dolphin File Browser
  * Toolbar > Control > Adjust View Properties > Check "Show hidden files" and "Use these view properties as default", and "Apply view properties to: All Folders"
  * Control > Configure Dolphin > Navigation > Check "Open archives as folder"
  * Control > Configure Shortcuts > Paste > Alternative (Shift+Insert): None (So we can paste to terminal)

* Taskbar
  * Run Dolphin, Chrome, Konsole, SublimeText, then right click each in the taskbar > Show launcher when not running
  * Taskbar Settings
    * On middle-click: Close
    * Sorting: Do not sort
    * Grouping: Do not group
    * Check "Show only task from current desktop"
    * Note: Minimized items are grayed out [might be fixed in 16.10](https://bugs.kde.org/show_bug.cgi?id=311991)
  * Panel Settings
    * Remove Sitcky Notes widget

* Window Settings
  * Screen Edges
    * Top Left: No Action
  * Virtual Desktops
    * Number of Desktops: 3
    * Switching
      * Animation: No Animations
      * Shortcuts
        * Desktop Switching > Switch One Desktop Left: Ctrl+Alt+Left
        * Desktop Switching > Switch One Desktop Right: Ctrl+Alt+Right
        * Desktop Switching > Switch To Desktop 1,2,3: None

* SysTray
  * System Tray Settings
    * General > Uncheck "Clipboard"
    * General > Uncheck "Instant Messaging"
    * Entries > Shown: Konversation
    * Entries > Hidden: 
  * Lock Widgets

* Konversation
  * Behaviour > Chat Window > Hide Join/Part/Nick events

* Install
  * Chrome: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

* System Settings
  * Window Behaviour
    * Focus stealing prevention: None
  * Mouse
    * Icons: Double-click to open files and folders (select on first click)
  * Desktop Behaviour
    * Screen Locking
      * Uncheck "Lock screen automatically after _ min"
      * Uncheck "Lock screen on resume"
    * Desktop Effects
      * Uncheck Zoom
      * Uncheck Fade
      * Uncheck Maximize
      * Uncheck Minimize
      * Uncheck Window Aperture
      * Check Resize Window
  * Startup and Shutdown
    * Desktop Session > Uncheck "Confirm logout"
  * Removable Devices
    * Check "Enable Auto-Mounting of removeable Media"
    * AutoMount data drive on login.
  

* Desktop Settings
  * Tweaks
    * Uncheck "Show the desktop toolbox"
  * Mouse Actions
    * Remove "Vertical Scroll: Switch Desktop"
  * Wallpaper
    * Layout: Folder View
* Folder View Settings
  * Icons
    * Arrange in: Columns
    * Sorting: Unsorted
    * Size: 4 (out of 6)

* Global Hotkeys
  * KWin > Show Desktop: Win+M
  * KWin > Maximize Window: Win+Up
  * KWin > Minimize Window: Win+Down
  * KWin > Quick Tile Window to the Left: Win+Left
  * KWin > Quick Tile Window to the Right: Win+Right
  * Plasma > Activate Application Menu Widget: Win+Space (You can't bind to just the Windows key atm)

* Shutter
  * Preferences
    * Main > Save > Filename: `%Y-%m-%d - %H-%M-%S - $name` 
    * Main > Save > Directory: ~/Pictures/Screenshots/   
    * Behaviour > Check "Start Shutter at Login"
    * Behaviour > Check "Hide Window on First Launch"
    * Behaviour > Uncheck "Autohide main window when taking a screenshot"
    * Behaviour > Uncheck "Present main window after taking a screenshot"
    * Note: Upload is manual only, and [only supports unauthed Imgur uploads](https://bugs.launchpad.net/shutter/+bug/990921).
    

* System Settings > Shortcuts > Custom Shortcuts
  * Uncheck "Preset Actions > PrintScreen"
  * Edit > New Group: Shutter
  * PrintScreen `shutter -f`, Ctrl+PrintScreen `shutter -s`, Alt+PrintScreen `shutter -a`
  * TODO: Auto Upload to Imgur using `-e` (wait till capture completes before ending), then parsing `./.shutter/session.xml` for the last screenshot filename, and uploading it.


* Cron / Postfix
  * `sudo apt-get install -y postfix`
    * Local only
  ```
  mkdir ~/.config/cron.hourly
  ```
  * `crontab -e`
  ```
  @hourly ( cd ~ && run-parts --report /home/$USER/.config/cron.daily )
  ```
  

# Manual Only

* Chrome
  * Settings > Appearance > Uncheck "Use system title bar and borders"
  * ~~Disable smooth scroll in chrome://flags~~ (Causes persistent tearing/artifacts on scroll).
  * Check that Flash requires user ok (not disabled and "always run" is unchecked) in chrome://plugins
  * Ghostery
    * Uncheck SoundCloud, Gravatar, Videology (daisuki)
  * Imagus
  ```
  !:bato.to
  ```
  * RES
    * Appearance > Selected Entry: Off
  * Youtube => VLC
    * Copy `~/.local/share/applications/vlcprotocol.desktop`
    * Run `xdg-mime default vlcprotocol.desktop x-scheme-handler/vlc`
    * Install https://greasyfork.org/en/scripts/17847-youtube-vlc-link to bind the Cinema View Button to open the vlc:// link.
    * Update vlc youtube parser (to fix filenames)
    ```
    wget https://raw.githubusercontent.com/videolan/vlc/master/share/lua/playlist/youtube.lua
    sudo cp /usr/lib/vlc/lua/playlist/youtube.luac youtube.luac # Backup
    sudo rm /usr/lib/vlc/lua/playlist/youtube.luac # Delete broken parser
    sudo cp youtube.lua /usr/lib/vlc/lua/playlist/youtube.lua # Install working parser
    ```
    * Install [youtube playlist parser](http://addons.videolan.org/content/show.php/+Youtube+playlist?content=149909)
    ```
    wget http://addons.videolan.org/CONTENT/content-files/149909-playlist_youtube.lua -P ~/.local/share/vlc/lua/playlist/youtube_playlist.lua
    ```

* Git
```
git config --global user.email "email@gmail.com"
```
* SSH
  * Generate new SSH Key?
  * Or copy previous to `~/.ssh/id_rsa` (chmod to 700) and `~/.ssh/id_rsa.pub`.

* Heroku
```
heroku login
```
  
* Steam
  ```
  cd ~/.steam/skins
  git clone https://github.com/somini/Pixelvision2.git
  ```
  * Login
  * Settings
    * Friends > Uncheck "When friend joins a game: display a notification"
    * Interface > Uncheck "Notify me about additions to my games and other releases"
    * Interface > Set Taskbar Preferences
      * Check only Library and Exit Steam
    * Interface > Skin: Pixelvision2

* scrotplus
  * Run `uploadscreenshot -a`, to begin logging into imgur.


# KDE 5.5 on Kubuntu 15.10

https://community.kde.org/Kubuntu/PPAs

```
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update && sudo apt full-upgrade -y
```
