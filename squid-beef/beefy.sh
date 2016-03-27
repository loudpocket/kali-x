#/bin/bash

cp payload.js /etc/squid3
cp poison.pl ~/ && cd ~/
chmod 755 *pl
#ls -l *pl
mkdir /var/www/html/tmp
chown nobody:nogroup /var/www/html/tmp
chmod 777 /var/www/html/tmp
