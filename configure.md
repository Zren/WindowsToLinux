# `postinstall.sh` Todo List

  
* Dolphin File Browser
  * Toolbar > Control > Adjust View Properties > Check "Show hidden files" and "Use these view properties as default", and "Apply view properties to: All Folders"
  * Control > Cofigure Dolphin > Navigation > Check "Open archives as folder"

* Taskbar
  * Run Dolphin, Chrome, Konsole, SublimeText, then right click each in the taskbar > Show launcher when not running
  * Taskbar Settings
    * On middle-click: Close
    * Sorting: Do not sort
    * Grouping: Do not group
    * Check "Show only task from current desktop"
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
  * Mouse
    * Icons: Double-click to open files and folders (select on first click)
  * Desktop Behaviour
    * Screen Locking
      * Uncheck "Lock screen automatically after _ min"
      * Uncheck "Lock screen on resume"

* Desktop Settings
  * Tweaks
    * Uncheck "Show the desktop toolbox"


# Manual Only

* Chrome
  * ~~Disable smooth scroll in chrome://flags~~ (Causes persistent tearing/artifacts on scroll).
  * Check that Flash requires user ok (not disabled and "always run" is unchecked) in chrome://plugins
  * Ghostery
    * Uncheck SoundCloud, Gravatar, Videology (daisuki)
  * Imagus
  * Settings > Appearance > Uncheck "Use system title bar and borders"
  ```
  !:bato.to
  ```
  * RES
    * Appearance > Selected Entry: Off
* Git
```
git config --global user.email "email@gmail.com"
```
* SSH
  * Generate new SSH Key?
  * Or copy previous to `~/.ssh/id_rsa` (chmod to 700) and `~/.ssh/id_rsa.pub`.

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
