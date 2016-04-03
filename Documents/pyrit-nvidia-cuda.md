# Nvidia Linux Drivers Cuda Pyrit
http://docs.kali.org/general-use/install-nvidia-drivers-on-kali-linux

	apt-get update
	apt-get upgrade
	apt-get dist-upgrade
	apt autoremove
	apt-get install -y linux-headers-$(uname -r)
	apt-get install nvidia-kernel-dkms

	sed 's/quiet/quiet nouveau.modeset=0/g' -i /etc/default/grub
	update-grub
	reboot

	glxinfo | grep -i "direct rendering"


http://www.blackmoreops.com/2013/10/20/how-to-install-nvidia-kernel-module-cuda-and-pyrit/

	apt-get install mesa-utils

https://developer.nvidia.com/cuda-toolkit

	service gdm3 stop
	# CTRL + ALT + F1
	chmod 755 cuda_7.5.18_linux.run
	./cuda_7.5.18_linux.run
	reboot
	apt-get install nvidia-xconfig
	nvidia-xconfig
	reboot

	lsmod | grep nvidia

	lsmod | grep nouveau
	# Nothing Should Print

	cat /etc/modprobe.d/nvidia.conf
	cat /etc/modprobe.d/nvidia-blacklists-nouveau.conf
	cat /etc/modprobe.d/nvidia-kernel-common.conf


## Cuda and Pyrit
http://www.blackmoreops.com/2014/03/13/install-nvidia-driver-kernel-module-cuda-and-pyrit-kali-linux/

	apt-get install nvidia-cuda-toolkit nvidia-opencl-icd

	wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/pyrit/pyrit-0.4.0.tar.gz
	wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/pyrit/cpyrit-cuda-0.4.0.tar.gz

	apt-get install libpcap-dev python-dev
	apt-get install libssl-dev

	apt-get remove pyrit
	rm -r /usr/local/lib/python2.7/dist-packages/cpyrit/

	tar -xzf pyrit-0.4.0.tar.gz
	cd pyrit-0.4.0

	python setup.py build
	python setup.py install

	cd ..
	tar -xzf cpyrit-cuda-0.4.0.tar.gz
	cd cpyrit-cuda-0.4.0

	python setup.py build
	python setup.py install

	pyrit list_cores

	pyrit benchmark

	nvcc --version

## cudaHashcat

	wget http://hashcat.net/files/cudaHashcat-2.01.7z
	mv cudaHashcat-2.01 /usr/share
	./cudaHashcat64.bin -t 32 -a 7 example0.hash ?a?a?a?a example.dict

