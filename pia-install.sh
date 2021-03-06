#/bin/bash

trap ctrl_c SIGINT

function ctrl_c() {
        printf "\n"
        exit
}

wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
mkdir openvpn
unzip openvpn.zip -d openvpn
printf "Cleanup...\n"
rm -rf openvpn.zip

function addPassText {
for file in openvpn/*.ovpn; do
	echo "auth-user-pass pass.txt" >> "openvpn/${file##*/}" 
done
}

while true; do
        read -p "Do you wish to add an account? [Y/n] " yn
        case $yn in
                [Yy]* ) read -p "Username: " varname; read -p "Password: " varpass;
if [ "$varname" != "" ] && [ "$varpass" != "" ]; then
	touch openvpn/pass.txt
	echo "$varname
$varpass" > openvpn/pass.txt
	chmod 600 openvpn/pass.txt
	addPassText;
	printf "Complete!\n**WARNING** If you missed typed your account information. You can find the file located at openvpn/pass.txt\n"
fi;break;;
                [Nn]* ) printf "Complete!\n"; exit;;
                * ) printf "Please answer, yes or no.\n";;
        esac
done
