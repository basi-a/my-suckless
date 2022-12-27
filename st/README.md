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

*******
我打了以下补丁
```
st-alpha-20220206-0.8.5.diff
st-anysize-0.8.4.diff
st-blinking_cursor-20211116-2f6e597.diff
st-dracula-0.8.5.diff
st-scrollback-20210507-4536f46.diff
st-scrollback-mouse-20220127-2c5edf2.diff
```