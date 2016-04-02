diskutil list

diskutil umountDisk /dev/disk1
diskutil unmountDisk /dev/disk2

sudo dd if=kalilinux.iso of=/dev/disk1 bs=512 conv=noerror,sync
