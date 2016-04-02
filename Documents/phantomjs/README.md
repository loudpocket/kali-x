# PhantomJS

This is providing you meet Hardware Requirments. For you VM'ers.

```
sudo apt-get install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev
```

## Optional

**Recommended

	apt-get install ttf-mscorefonts-installer

Your call

	apt-get install libfontconfig

	apt-get install fontconfig

I had to delete phantomjs-master, and run the following remove command.
```
root@kali:~/Downloads/phantomjs-master# python build.py
----------------------------------------
               WARNING
----------------------------------------

Building PhantomJS from source takes a very long time, anywhere from 30 minutes
to several hours (depending on the machine configuration). It is recommended to
use the premade binary packages on supported operating systems.

For details, please go the the web site: http://phantomjs.org/download.html.

Do you want to continue (Y/n)? y
configuring Qt Base, please wait...
Executing in /root/Downloads/phantomjs-master/src/qt/qtbase: /root/Downloads/phantomjs-master/src/qt/qtbase/configure -static -opensource -confirm-license -prefix /root/Downloads/phantomjs-master/src/qt/qtbase -qt-zlib -qt-libpng -qt-libjpeg -qt-pcre -nomake examples -nomake tools -nomake tests -no-qml-debug -no-dbus -no-opengl -no-audio-backend -D QT_NO_GRAPHICSVIEW -D QT_NO_GRAPHICSEFFECT -D QT_NO_STYLESHEET -D QT_NO_STYLE_CDE -D QT_NO_STYLE_CLEANLOOKS -D QT_NO_STYLE_MOTIF -D QT_NO_STYLE_PLASTIQUE -D QT_NO_PRINTPREVIEWDIALOG -qpa phantom -openssl -openssl-linked -no-openvg -no-eglfs -no-egl -no-glib -no-gtkstyle -no-cups -no-sm -no-xinerama -no-xkb -no-xcb -no-kms -no-linuxfb -no-directfb -no-mtdev -no-libudev -no-evdev -no-pulseaudio -no-alsa -no-feature-PRINTPREVIEWWIDGET -fontconfig -icu -release
Traceback (most recent call last):
  File "build.py", line 458, in <module>
    main()
  File "build.py", line 451, in main
    builder.run()
  File "build.py", line 357, in run
    self.buildQtBase()
  File "build.py", line 300, in buildQtBase
    self.configureQtBase()
  File "build.py", line 287, in configureQtBase
    if self.execute(configure, "src/qt/qtbase") != 0:
  File "build.py", line 134, in execute
    process = subprocess.Popen(command, stdout=sys.stdout, stderr=sys.stderr, cwd=workingDirectory)
  File "/usr/lib/python2.7/subprocess.py", line 710, in __init__
    errread, errwrite)
  File "/usr/lib/python2.7/subprocess.py", line 1335, in _execute_child
    raise child_exception
OSError: [Errno 2] No such file or directory
```
	apt-get autoremove

## Building

	git clone https://github.com/ariya/phantomjs

	cd phantomjs

	python build.py

Get some tacos from Taco Bell.

## Configure

	sudo mv $PHANTOM_JS /usr/local/share
	sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin

	phantomjs --version


# Nodejs Phantom

```
root@kali:~# npm set strict-ssl false
root@kali:~# npm install phantom --save
npm WARN package.json fs@0.0.2 No description
npm WARN package.json fs@0.0.2 No repository field.
npm WARN package.json fs@0.0.2 No README data
npm WARN package.json http@0.0.0 No description
npm WARN package.json http@0.0.0 No repository field.
npm WARN package.json http@0.0.0 No README data
npm WARN package.json net@1.0.2 'repositories' (plural) Not supported.
npm WARN package.json Please pick one as the 'repository' field
npm WARN package.json net@1.0.2 No README data
npm WARN engine phantom@2.0.10: wanted: {"node":">=0.12"} (current: {"node":"0.10.29","npm":"1.4.21"})
npm WARN engine hawk@3.1.3: wanted: {"node":">=0.10.32"} (current: {"node":"0.10.29","npm":"1.4.21"})
npm WARN engine hoek@2.16.3: wanted: {"node":">=0.10.40"} (current: {"node":"0.10.29","npm":"1.4.21"})
npm WARN engine boom@2.10.1: wanted: {"node":">=0.10.40"} (current: {"node":"0.10.29","npm":"1.4.21"})
npm WARN engine cryptiles@2.0.5: wanted: {"node":">=0.10.40"} (current: {"node":"0.10.29","npm":"1.4.21"})
/
> phantomjs-prebuilt@2.1.7 install /root/node_modules/phantom/node_modules/phantomjs-prebuilt
> node install.js

sh: 1: node: not found
npm WARN This failure might be due to the use of legacy binary "node"
npm WARN For further explanations, please read
/usr/share/doc/nodejs/README.Debian
 
npm ERR! phantomjs-prebuilt@2.1.7 install: `node install.js`
npm ERR! Exit status 127
npm ERR! 
npm ERR! Failed at the phantomjs-prebuilt@2.1.7 install script.
npm ERR! This is most likely a problem with the phantomjs-prebuilt package,
npm ERR! not with npm itself.
npm ERR! Tell the author that this fails on your system:
npm ERR!     node install.js
npm ERR! You can get their info via:
npm ERR!     npm owner ls phantomjs-prebuilt
npm ERR! There is likely additional logging output above.

npm ERR! System Linux 4.0.0-kali1-amd64
npm ERR! command "/usr/bin/nodejs" "/usr/bin/npm" "install" "phantom" "--save"
npm ERR! cwd /root
npm ERR! node -v v0.10.29
npm ERR! npm -v 1.4.21
npm ERR! code ELIFECYCLE
npm ERR! 
npm ERR! Additional logging details can be found in:
npm ERR!     /root/npm-debug.log
npm ERR! not ok code 0
```
	sudo npm cache clean -f
	sudo npm install -g n
	sudo n stable

	npm install phantom --save

