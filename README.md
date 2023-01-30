# my-suckless
## 介绍
我自己打好补丁自用的的suckless全家桶， 包含（dwm, st, slock, slstatus）,应用于archlinux;
之前分的好几个仓库就都删除了;
以下操作确保当前用户是可以使用sudo提权的普通用户
##  依赖和dotfile
前提是添加好了archlinuxcn源
```bash
cd my-suckless
# 依赖
./dependencies.sh
# dotfiles
./use-dotfiles.sh
```
## 编译安装
添加了archlinuxcn源后，可直接安装suckless全家桶; 若使用前面的脚本解决了依赖，可直接使用下面的重新编译脚本,跳过调用解决依赖和应用dotfiles的脚本的函数
```bash
cd my-suckless
./suckless-install.sh
```
## 启动dwm
```bash
startx
```
## 重新编译安装xxx
这种方式会删除config.h, 修改config.def.h进行更改配置,
后面参数取决于想重新编译那一个，比如重新编译dwm`./reinstall.sh dwm`
```bash
cd my-suckless
./reinstall.sh all
```
或者，编辑config.h, 然后cd到对应的目录, 重新编译
```bash
sudo make clean install
```
## 自定义快捷键
除了自定义的全是默认的快捷键
### dwm
```text
alt+shift+e     打开dwmexit菜单
alt+shift+l     使用slock锁屏
alt+r           打开rofi
alt+w           打开浏览器  
alt+shift+s     打开flameshot
alt+F1          静音
alt+F2          减小音量
alt+F3          增大音量
alt+F4          降低亮度
alt+F5          提升亮度
super+[xk_grave]       打开位于屏幕正中的小终端，默认为st， 按第二遍隐藏 (挂个htop当任务管理器倒是不错); xk_grave 是tab上面，esc下面的倒引号那个键
#标签、窗口类
alt+shift+j/k   将栈中窗口挪到主窗口
alt+left/right  切换前一个或下一个tag
alt+n           按住显示tagsalt里面的标签，我这里是显示是标签序号

#窗口间隙相关
Alt+Super+0         打开和关闭间隙
Alt+Super+Shift+0   将间隙重置为默认值
Alt+Super+h         增加所有差距
Alt+Super+l         缩小所有差距
Alt+Super+Shift+h   增加外部间隙
Alt+Super+Shift+l   减少外部间隙
Alt+Super+Ctrl+h    增加内部间隙
Alt+Super+Ctrl+l    减少内部间隙
Alt+y               增加内部水平间隙
Alt+o               减少内部水平间隙
Alt+Ctrl+y          增加内部垂直间隙
Alt+Ctrl+o          减少外部垂直间隙
Alt+Super+y         增加外部水平间隙
Alt+Super+o         减少外部水平间隙
Alt+Shift+y         增加外部垂直间隙
Alt+Shift+o         减少外部垂直间隙
```
### st
```text
鼠标右键选择文本复制
鼠标中键(滑轮)粘贴
```
# 截图
![屏幕截图](Screenshot.png)