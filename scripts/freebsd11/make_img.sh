#!/bin/sh


if ! [ -f pkg_nvidia.txz ]; then
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
echo 'if_urtwn_load="YES"' >> disc1/boot/loader.conf
echo 'legal.realtek.license_ack=1'  >> disc1/boot/loader.conf
rm disc1/etc/resolv.conf 
cp resolv.conf disc1/etc
rm disc1/etc/rc.local
cp rc.local disc1/etc
echo 'ifconfig_em0="DHCP"' >> disc1/etc/rc.conf
echo 'wlans_urtwn0="wlan0"'         >>        disc1/etc/rc.conf           
echo 'ifconfig_wlan0="WPA DHCP"'    >>        disc1/etc/rc.conf
echo 'network={'            >>   disc1/etc/wpa_supplicant.conf
                     echo 'ssid="1ghfghf"'       >>   disc1/etc/wpa_supplicant.conf
                     echo 'psk=3fb85bd2dec160ecba1cdf1004bec112938775d49f2b2666491410f76796377d'  >>   disc1/etc/wpa_supplicant.conf
                     echo '}' >> disc1/etc/wpa_supplicant.conf      
cp zfs_install disc1
cp autoinstall disc1
cp loader.conf disc1
cp rc.conf     disc1
cp wpa_supplicant.conf disc1
cp pid disc1
cp pkg_nvidia.txz disc1/usr/freebsd-dist


sh ./make-memstick.sh disc1 FreeBSD-$(uname -r)-$(uname -m)-$(uname -a | awk '{print $7}' | sed 's/.$//').img
