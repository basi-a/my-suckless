# my-suckless

## 介绍
我自己打好补丁自用的的suckless全家桶， 包含（dwm, st, slock, slstatus）
之前分的好几个仓库就都删除了
以下操作确保当前用户是可以使用sudo提权的普通用户
## 依赖
安装俺的suckless全家桶的依赖
```bash
cd my-suckless
./dependencies.sh
```
## 安装
依赖解决后，安装suckless全家桶
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