#!/bin/bash

mkdir /mnt/hgfs
/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other

echo >> ~/.bashrc
echo "/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other" >> ~/.bashrc

echo >> /home/kali/.bashrc
echo "/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other" >> /home/kali/.bashrc

apt update
apt upgrade -y

