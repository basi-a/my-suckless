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
```bash
cd my-suckless
./reinstall.sh all
```
后面参数取决于想重新编译那一个，比如
`./reinstall.sh dwm`
这是重新编译dwm的
## 自定义快捷键
除了自定义的全是默认的快捷键
### dwm
```text
alt+shift+e 打开dwmexit菜单
alt+shift+l 使用slock锁屏
alt+r       打开rofi
alt+w       打开浏览器  
alt+shift+s 打开flameshot
alt+F1      静音
alt+F2      减小音量
alt+F3      增大音量
alt+F4      降低亮度
alt+F5      提升亮度
```
### st
```text
鼠标右键选择文本复制
鼠标中键(滑轮)粘贴
```
# 截图
![屏幕截图](Screenshot.png)