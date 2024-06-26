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
## 打了以下的补丁
来自github [bakkeby/patches](https://github.com/bakkeby/patches)
```text
dwm-alpha-systray-6.3_full.diff 		#dwm透明和系统托盘合并补丁
dwm-steam-6.3.diff                      #修复steam及打开steam游戏的窗口
```
来自suckless官网的补丁
```text
dwm-autostart-20210120-cb3f58a.diff	        #脚本自启
dwm-alternativetags-6.3.diff
dwm-exitmenu-6.3.diff                       #alt+shift+e退出菜单
dwm-restartsig-20180523-6.2.diff            #使得exitmenu的restart可用
dwm-restoreafterrestart-20220709-d3f93c7.diff #使得restart之后先前的窗口还会恢复原本的标签位置，而不是全跑到第一个里面
dwm-dmenumatchtop-6.2.diff                  #随着topbar的位置更新dmenu的位置
dwm-cursorwarp-6.3.diff                     #自动移动鼠标到焦点窗口中间
dwm-vanitygaps-20200610-f09418b.diff        #窗口间缝隙，smartgaps=1时 会仅有一个窗口时自动去掉缝隙
dwm-rotatestack-20161021-ab9571b.diff       #将栈中的窗口挪到主窗口
dwm-vanitygaps-20200610-f09418b.diff        #alt+left/right切换前后标签
dwm-scratchpad-20221102-ba56fe9.diff        #alt+tab上面那个倒引号的键， 打开位于屏幕正中的小终端默认st， 按第二遍隐藏 
```

## 关于脚本
读取`$HOME/.dwm/autostart.sh`随之dwm自启动应用
## 关于背光
关于笔记本背光调节,需要把用户添加到video组
```bash
sudo usermod -a -G video username
```
还要编辑`/etc/udev/rules.d/backlight.rules`规则,对于intel cpu用户
```text
RUN+="/bin/chgrp video /sys/class/backlight/intel_backlight/brightness"
RUN+="/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness"
```
详见[archwiki blacklight](https://wiki.archlinuxcn.org/wiki/Backlight)
## 关于字体
```bash
sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
sudo pacman -S ttf-font-awesome awesome-terminal-fonts ttf-sarasa-gothic
```
