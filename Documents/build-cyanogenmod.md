# Cyanogenmod

This guide is disfunctional. DO NOT FOLLOW!

```
clang: error: linker command failed with exit code 1 (use -v to see invocation)
build/core/host_executable_internal.mk:31: recipe for target '/root/android/system/out/host/linux-x86/obj32/EXECUTABLES/third_party_protobuf_protoc_arm_host_gyp_intermediates/protoc' failed
make: *** [/root/android/system/out/host/linux-x86/obj32/EXECUTABLES/third_party_protobuf_protoc_arm_host_gyp_intermediates/protoc] Error 1
make: *** Waiting for unfinished jobs....
Copying: /root/android/system/out/target/product/bacon/obj/GYP/shared_intermediates/resources/inspector/spectrum.css
make: Leaving directory '/root/android/system'

#### make failed to build some targets (05:05 (mm:ss)) ####
```

	apt-get update
	apt-get upgrade
	apt-get dist-upgrade


## Establishing a Build Environment
 
	apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk3.0-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc

```
sudo apt-get install git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils xsltproc unzip
```

```
apt-get install bison build-essential curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop maven openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev

```

	apt-get install g++-multilib gcc-multilib lib32ncurses5-dev lib32readline6-dev lib32z1-dev


Having trouble with outdated packages?

	#apt-cache search libwx

**Required for 64-bit operating system

	apt-get install g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib

At this point I'm freaking out and ran. Then I installed Android SDK Tools and Android SDK Platform-tools in gui, ewwwwww.

	android

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

	source build/envsetup.sh
	breakfast bacon

	cd ~/android/system/device/oneplus/bacon

Connect OnePlus1 USB. Extracting proprietary blobs.

	./extract-files.sh

Start the build

	export USE_CCACHE=0
	croot
	brunch bacon

