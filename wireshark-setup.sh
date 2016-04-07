#/bin/bash

dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark loudpocket
grep "wireshark" /etc/group
#dumpcap -i 2 -b files:100 -b filesize:30000 -w internet.pcap

