#/bin/bash

ifconfig wlan0 down
iwconfig wlan0 mode monitor
ifconfig wlan0 up
#airmon-ng check
pkill dhclient
airbase-ng -c 11 -e "Free WiFi" wlan0
