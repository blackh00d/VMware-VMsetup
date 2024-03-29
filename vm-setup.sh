#!/bin/bash

mkdir /mnt/hgfs
/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other

echo >> ~/.profile
echo "/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other" >> ~/.profile

apt update
apt upgrade -y
