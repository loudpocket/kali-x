#/bin/bash

ifconfig wlan1 down
macchanger -r wlan1
ifconfig wlan1 up
