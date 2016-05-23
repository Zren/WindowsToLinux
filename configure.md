# `postinstall.sh` Todo List

  
* Dolphin File Browser
  * Toolbar > Control > Adjust View Properties > Check "Show hidden files" and "Use these view properties as default", and "Apply view properties to: All Folders"
  * Control > Configure Dolphin:
    * Navigation > Check "Open archives as folder"
    * Services
      * Uncheck: "Copy To", "Delete", "File to activity", "Send as Email", "Send to IM", "Send via Bluetooth", "Send via KDE Connect"
  * Control > Configure Shortcuts > Paste > Alternative (Shift+Insert): None (So we can paste to terminal)

* Taskbar (aka Panel)
  * Unlock Panel if not already
  * Right Click Start Button > Alternatives > Application Menu
  * Right Click application in taskbar > Alternatives > Task Manager (for icons + titles)
  * Run Dolphin, Chrome, Konsole, SublimeText, then right click each in the taskbar > Show launcher when not running
  * Taskbar Settings
    * On middle-click: Close
    * Sorting: Manually
    * Grouping: Do not group
    * Check "Show only task from current desktop"
    * Note: Minimized items are grayed out [might be fixed in 16.04](https://bugs.kde.org/show_bug.cgi?id=311991).
  * Panel Settings
    * Remove Sitcky Notes widget
    * Add Widgets > Get New Widgets > Download
      * Event Calendar
      * Redshift
  * System Tray Settings
    * General > Extra Items (wither they are Enabled or not)
      * Uncheck "Clipboard", "Instant Messaging", "Battery", "Audio Volume"
    * Entries
      * Shown: Konversation
      * Hidden: Networks, Redshift, Updates
  * Add Widgets > Audio Volume (left of clock)
  * Right Click Clock > Alternatives > Event Calendar
  * Event Calendar
    * General > Line 1: `ddd d,h:mm AP`
    * General > Mouse Wheel > Volume (xdotool)
    * Calendar > Uncheck Show Borders
    * Google Calendar > Login & Select Calendars
    * Weather > Select city
  * Lock Panel

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


* Konversation
  * Behaviour > Chat Window > Hide Join/Part/Nick events

* Clementine
  * Menu > Playlist > Repeat Mode: Repeat Playlist
  * Tools > Preferences
    * Playback > Uncheck Show a glowing animation on the current track
    * Playback > Uncheck Fade out when stopping a track
    * Playback > Uncheck Cross-fade when changing tracks manually
    * Behaviour > Using the menu to add a song will: Always start playing
    * Behaviour > Double clicking a song will: Replace the playlist + Always start playing
    * Search > Uncheck DigitallyImported, DropBox, Google Drive, Jazz
    * Last.fm > Unchceck Show the "love" amd "ban" buttons
    * Lasm.fm > Uncheck Show the scrobble button

* Comix
  * View > Toolbars > Hide "Statusbar" and "Thumbnails"
  * Edit > Preferences
    * Behavious > Check "Flip pages when scrolling off the edges of pages"

* SMPlayer
  * Options > Toolbars > Uncheck Main and Language toolbars
  * Options > Preferences
    * Interface
      * Autoresize: Only after loading a new video
      * Icon Set: Monochrome
      * Floating control
        * Width: 100

* Install
  * Chrome: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

* System Settings
  * Window Management
    * Window Behaviour
      * Focus stealing prevention: None
    * Task Switcher
      * Breeze => Big Icons (which is part of the `kdeplasma-addons` package which kubuntu ships with)
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
  * Power Management
    * Uncheck "Dim Screen"
    * Switch off after "45 minutes"

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
    

* System Settings > Shortcuts > Custom Shortcuts
  * Uncheck "Preset Actions > PrintScreen"

* Screenshots: (Using scrot + scripts)
  * 


* Cron / Postfix:
  * `sudo apt-get install -y postfix`
    * Local only
  * [cron.hourly folders in home directory](http://unix.stackexchange.com/questions/275440/etc-cron-hourly-in-home-directory/275442#275442)
  ```
  mkdir ~/.config/cron.hourly
  mkdir ~/.config/cron.daily
  mkdir ~/.config/cron.weekly
  mkdir ~/.config/cron.monthly
  mkdir ~/.config/cron.yearly
  mkdir ~/.config/cron.reboot
  ```
  * `crontab -e`
  ```
  @hourly ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.hourly )
  @daily ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.daily )
  @weekly ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.weekly )
  @monthly ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.monthly )
  @yearly ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.yearly )
  
  @reboot ( cd ~ && run-parts --report /home/$(whoami)/.config/cron.reboot )
  ```

* VLC:
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

# Manual Only

* Chrome
  * Settings > Appearance > Uncheck "Use system title bar and borders"
  * ~~Disable smooth scroll in chrome://flags~~ (Causes persistent tearing/artifacts on scroll).
  * Check that Flash requires user ok (not disabled and "always run" is unchecked) in chrome://plugins
  * Ghostery
    * Uncheck SoundCloud, Gravatar, Videology (daisuki.net)
  * Imagus
  ```
  !:bato.to
  ```
  * RES
    * Appearance > Selected Entry: Off
    * Browsing > Single Click Opener > openOrder: links then comments
    * Browsing > Single Click Opener > openBackground: On
  * Youtube => VLC
    * Copy `~/.local/share/applications/vlcprotocol.desktop`
    * Run `xdg-mime default vlcprotocol.desktop x-scheme-handler/vlc`
    * Install https://greasyfork.org/en/scripts/17847-youtube-vlc-link to bind the Cinema View Button to open the vlc:// link.
  
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

* VLC
  * Video > Deinterlacing: Set to `On` if videos appear cropped when scaled larger than the source's size.

# KDE 5.5 on Kubuntu 15.10

https://community.kde.org/Kubuntu/PPAs

```
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update && sudo apt full-upgrade -y
```
