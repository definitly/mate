#!/bin/sh

    if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
     fi

kldload cuse4bsd
webcamd -d ugen5.3 -i 0 -v 0 &
chmod 0666 /dev/video0