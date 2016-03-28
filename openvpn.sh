#!/bin/bash

function fixNetwork {
	service NetworkManager restart
	sleep 1
	./resolv.sh
	service privoxy restart
	cd openvpn
}

case "$1" in
'melbourne')
fixNetwork
openvpn --auth-nocache --config AU\ Melbourne.ovpn
;;
'sydney')
fixNetwork
openvpn --auth-nocache --config AU\ Sydney.ovpn
;;
'brazil')
fixNetwork
openvpn --auth-nocache --config Brazil.ovpn
;;
'northyork')
fixNetwork
openvpn --auth-nocache --config CA\ North\ York.ovpn
;;
'toronto')
fixNetwork
openvpn --auth-nocache --config CA\ Toronto.ovpn
;;
'denmark')
fixNetwork
openvpn --auth-nocache --config Denmark.ovpn
;;
'finland')
fixNetwork
openvpn --auth-nocache --config Finland.ovpn
;;
'france')
fixNetwork
openvpn --auth-nocache --config France.ovpn
;;
'germany')
fixNetwork
openvpn --auth-nocache --config Germany.ovpn
;;
'kong')
fixNetwork
openvpn --auth-nocache --config Hong\ Kong.ovpn
;;
'india')
fixNetwork
openvpn --auth-nocache --config India.ovpn
;;
'ireland')
fixNetwork
openvpn --auth-nocache --config Ireland.ovpn
;;
'israel')
fixNetwork
openvpn --auth-nocache --config Israel.ovpn
;;
'italy')
fixNetwork
openvpn --auth-nocache --config Italy.ovpn
;;
'japan')
fixNetwork
openvpn --auth-nocache --config Japan.ovpn
;;
'mexico')
fixNetwork
openvpn --auth-nocache --config Mexico.ovpn
;;
'netherlands')
fixNetwork
openvpn --auth-nocache --config Netherlands.ovpn
;;
'zealand')
fixNetwork
openvpn --auth-nocache --config New\ Zealand.ovpn
;;
'norway')
fixNetwork
openvpn --auth-nocache --config Norway.ovpn
;;
'romania')
fixNetwork
openvpn --auth-nocache --config Romania.ovpn
;;
'russia')
fixNetwork
openvpn --auth-nocache --config Russia.ovpn
;;
'singapore')
fixNetwork
openvpn --auth-nocache --config Singapore.ovpn
;;
'sweden')
fixNetwork
openvpn --auth-nocache --config Sweden.ovpn
;;
'switzerland')
fixNetwork
openvpn --auth-nocache --config Switzerland.ovpn
;;
'turkey')
fixNetwork
openvpn --auth-nocache --config Turkey.ovpn
;;
'london')
fixNetwork
openvpn --auth-nocache --config UK\ London.ovpn
;;
'southampton')
fixNetwork
openvpn --auth-nocache --config UK\ Southampton.ovpn
;;
'california')
fixNetwork
openvpn --auth-nocache --config US\ California.ovpn
;;
'east')
fixNetwork
openvpn --auth-nocache --config US\ East.ovpn
;;
'florida')
fixNetwork
openvpn --auth-nocache --config US\ Florida.ovpn
;;
'midwest')
fixNetwork
openvpn --auth-nocache --config US\ Midwest.ovpn
;;
'newyork')
fixNetwork
openvpn --auth-nocache --config US\ New\ York\ City.ovpn
;;
'seattle')
fixNetwork
openvpn --auth-nocache --config US\ Seattle.ovpn
;;
'silicon')
fixNetwork
openvpn --auth-nocache --config US\ Silicon\ Valley.ovpn
;;
'texas')
fixNetwork
openvpn --auth-nocache --config US\ Texas.ovpn
;;
'west')
fixNetwork
openvpn --auth-nocache --config US\ West.ovpn
;;
esac
