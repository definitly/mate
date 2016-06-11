#!/bin/sh

export  SSL_NO_VERIFY_PEER=1


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


pkg install  -yU -r skype4   skype4  linux-c6-alsa-plugins-oss linux-c6-alsa-lib linux-c6-libogg linux-c6-libvorbis
pkg delete -f  linux-c6-pulseaudio-libs

cd 
fetch http://download.skype.com/linux/skype-4.3.0.37.tar.bz2
