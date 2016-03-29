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
phantomjs OSError: [Errno 2] No such file or directory
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
