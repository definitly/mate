#!/bin/sh


 if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


 
  
if ! [ -f /usr/local/etc/pkg/repos/freebsd.conf ]; then

daos cp /home/definitly/mate/etc/freebsd.conf /usr/local/etc/pkg/repos

fi


pkg update
pkg install -r virtualbox -Uy virtualbox-ose 
pkg install -r virtualbox -Uy qt4-corelib 
pkg install -r FreeBSD -Uy tigervnc

pw groupmod vboxusers -m definitly
pw groupmod operator  -m definitly
daos chmod +x  /usr/local/lib/virtualbox/VBoxHeadless 
daos chmod +x  /usr/local/lib/virtualbox/VirtualBox                                                                                      
     kldload   vboxdrv.ko
     kldload   vboxnetadp.ko
daos rm        /usr/local/etc/pkg/repos/freebsd.conf