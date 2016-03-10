Kubuntu Equivalent

* `cmd` => `konsole`
* `explorer` => `plasmashell`
    * To restart the shell if it crashes, Alt-F2 > `konsole` > `killall plasmashell ; kstart plasmashell` (http://askubuntu.com/a/652701)
      * If the windows are failing to minimize/reveal in the taskbar afterward, run `kwin_x11 --replace`.
* Drives `C:\` `D:\` => `/media/$user/$name/` when mounted, and `/dev/sta1` `/dev/stb1` in general. a-z = device, 1-9 = partition.
