# Cyanogenmod

	apt-get update
	apt-get upgrade
	apt-get dist-upgrade


## Establishing a Build Environment
 
	apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk3.0-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc

Having trouble with outdated packages?

	#apt-cache search libwx

**Required for 64-bit operating system

	apt-get install g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib


## bashrc & repo

	mkdir -p ~/bin
	mkdir -p ~/android/system

	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	chmod a+x ~/bin/repo

	nano ~/.bashrc

```
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
```

Reload bashrc

	. ~/.bashrc

CyanogenMod source repository

	cd ~/android/system/
	repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1
	repo sync

	cd ~/android/system/vendor/cm
	./get-prebuilts

	source build/envsetup.sh
	breakfast bacon

	cd ~/android/system/device/oneplus/bacon
	./extract-files.sh

Start the build

	export USE_CCACHE=1
	croot
	brunch bacon

