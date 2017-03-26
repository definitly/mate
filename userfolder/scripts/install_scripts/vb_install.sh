#!/bin/sh


 if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


 
  



pkg install -y virtualbox-ose 

pw groupmod vboxusers -m definitly
pw groupmod operator  -m definitly
     chmod +x  /usr/local/lib/virtualbox/VBoxHeadless 
     chmod +x  /usr/local/lib/virtualbox/VirtualBox                                                                                      
     kldload   vboxdrv.ko
     kldload   vboxnetadp.ko
