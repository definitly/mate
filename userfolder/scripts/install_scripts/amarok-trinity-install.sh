#!/bin/sh


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


 
  
if ! [ -f /usr/local/etc/pkg/repos/freebsd.conf ]; then

sudo cp /home/definitly/mate/etc/freebsd.conf /usr/local/etc/pkg/repos


fi



pkg update
pkg install -r TDE -Uy amarok-trinity
pkg install -r TDE -Uy tdelibs-trinity

pkg install -r TDE -Uy iceauth
pkg install -r TDE -Uy libpqtypes

sudo rm        /usr/local/etc/pkg/repos/freebsd.conf