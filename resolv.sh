#/bin/bash

echo "nameserver 208.67.222.222
nameserver 208.67.220.220" > /etc/resolv.conf
printf "Your Nameservers...\n"
cat /etc/resolv.conf
