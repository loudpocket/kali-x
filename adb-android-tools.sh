#/bin/bash

wget /etc/udev/rules.d/51-android.rules https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/51-android.rules
chmod a+r /etc/udev/rules.d/51-android.rules
service udev restart

apt-get install android-tools-adb android-tools-fastboot
adb version

