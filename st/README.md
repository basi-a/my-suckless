st - simple terminal
--------------------
st is a simple terminal emulator for X which sucks less.


Requirements
------------
In order to build st you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

    make clean install


Running st
----------
If you did not install st with make clean install, you must compile
the st terminfo entry with the following command:

    tic -sx st.info

See the man page for additional details.

Credits
-------
Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

## 补丁
我打了以下的补丁
```text
st-anysize-20220718-baa9357.diff    # st全屏
st-clipboard-0.8.3.diff             # 处理不同应用剪切板
st-dracula-0.8.5.diff               # 颜色主题
st-dynamic-cursor-color-0.9.diff    
st-focus-20200731-43a395a.diff      # st 透明和聚焦效果
st-scrollback-0.8.5.diff            
st-scrollback-reflow-0.8.5.diff         
st-scrollback-mouse-altscreen-20220127-2c5edf2.diff # 鼠标滚动，前两个是前置补丁
simple_plumb-0.8.5.diff             # 右键点击将文本从st复制出来
simple_plumb_double_click-0.8.5.diff
# 对照补丁手动改的代码，没用patch，本来应该是右键粘贴的，自行写成了中键粘贴
st-rightclickpaste-0.8.2.diff       # 中键键将剪切板内容粘贴到st

st-netwmicon-0.8.5-v2.diff
st-desktopentry-0.8.5.diff			# 这俩为st生成desktop文件，以及解决无图标问题
st-nano-shortcuts-support-0.8.5.diff# 支持nano的按键

st-hidecursor-0.8.3.diff			# 输入时隐藏鼠标
st-ligatures-alpha-scrollback-ringbuffer-20221120-0.9.diff # 连字支持
st-appsync-20200618-b27a383.diff    # appsync 由于我的st是clone的st-master ,所以前置的sync补丁也用不着打
st-blinking_cursor-20211116-2f6e597.diff # 更多光标类型
```c
//st-rightclickpaste-0.8.2.diff 手动改部分
void
brelease(XEvent *e)
{
	......
    
	//Left mouse button
	if (btn == Button1)
		mousesel(e, 1);
	//Middle mouse button
	else if (btn == Button2)
		selpaste(NULL);
	//Right mouse button
	else if (btn == Button3)
		plumb(xsel.primary);
}
```