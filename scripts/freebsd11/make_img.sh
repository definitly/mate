#!/bin/sh


if ! [ -f pkg.txz ]; then
   echo 'No file  pkg.txz'
   exit 1

fi


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if [ -z "$1" ]
then
  echo "Порядок использования: `basename $0` img  "
  exit 1
fi


if ! [ -d disc1 ]; then
         echo 'No directory'
         mkdir disc1 
   
fi

mdconfig -a -t vnode -u0 -f $1
mount /dev/md0p3 /mnt
mount /dev/md0a /mnt

cp -rp /mnt/*  disc1

umount /mnt
mdconfig -d -u 0


echo 'autoboot_delay="-1"' >> disc1/boot/defaults/loader.conf
rm disc1/etc/resolv.conf 
cp resolv.conf disc1/etc
rm disc1/etc/rc.local
cp rc.local disc1/etc
cp zfs_install disc1
cp pid disc1
cp pkg.txz disc1/usr/freebsd-dist


sh ./make-memstick.sh disc1 1.img
