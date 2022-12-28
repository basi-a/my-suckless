# my-suckless

## 介绍
我自己打好补丁自用的的suckless全家桶， 包含（dwm, st, slock, slstatus）
之前分的好几个仓库就都删除了
## 依赖
字体
```bash
sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
sudo pacman -S ttf-font-awesome awesome-terminal-fonts ttf-sarasa-gothic
```
软件包
```bash
sudo pacman -S picom feh numlockx xautolock
# 可以后装的输入法
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color
paru -S fcitx5-input-support
```
## 安装
依赖解决后，安装suckless全家桶
有sudo权的普通用户执行
```bash
cd my-suckless
./suckless-install.sh
```
## 启动dwm
有sudo权的普通用户执行
```bash
startx
```