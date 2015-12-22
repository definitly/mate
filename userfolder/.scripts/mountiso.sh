#!/bin/sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


 mdconfig -a -t vnode -f $1  -u 1
 mount -t cd9660 /dev/md1 /mnt/