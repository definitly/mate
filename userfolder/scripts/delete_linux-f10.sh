#!/bin/sh
# delete linux_base-f10 and linux-f10*

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

rm /tmp/pkg.log
 
  pkg info -q | grep linux  >> /tmp/pkg.log


 
 for i in `cat  /tmp/pkg.log` ; do 
       pkg delete  -fy  $i
     done

rm /tmp/pkg.log