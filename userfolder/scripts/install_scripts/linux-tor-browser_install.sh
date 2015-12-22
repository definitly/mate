#!/bin/sh
export  SSL_NO_VERIFY_PEER=1


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
#wget --content-disposition --no-check-certificate https://www.cubby.com/pl/tor.tar.gz/_6c907d7e8ea14f08bff3f9145c48915d
#tar -xf  tor.tar.gz -C  ~/
#rm tor.tar.gz

pkg install -y linux-c6-xorg-libs linux-tor-browser  linux-c6-alsa-lib  linux-c6-alsa-plugins-oss linux-c6-dbus-glib linux-c6-dbus-libs linux-c6-gtk2