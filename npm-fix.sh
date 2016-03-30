#/bin/bash

cd /usr/bin/
sudo ln -s nodejs node
cd ~
wget https://npmjs.org/install.sh
chmod u+x install.sh
./install.sh

