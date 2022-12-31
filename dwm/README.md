dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.


Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
*****************
## 打了四个补丁
```text
dwm-systray-6.3.diff 			#系统托盘
dwm-autostart-20210120-cb3f58a.diff	#脚本自启
dwm-fixborders-6.2.diff
dwm-alternativetags-6.3.diff
```
alpha那个补丁没有打,似乎与系统托盘的补丁有冲突
## 关于脚本
```bash
cd my_dwm
cp -r scripts ~/.dwm/scripts
cd ~/.dwm/scripts
mv autostart.sh ../
```
## 关于背光
关于笔记本背光调节,需要把用户添加到video组,还要编辑`/etc/udev/rules.d/backlight.rules`规则，详见[archwiki blacklight](https://wiki.archlinux.org/title/Backlight)
## 关于字体
```bash
sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
sudo pacman -S ttf-font-awesome awesome-terminal-fonts ttf-sarasa-gothic
```
