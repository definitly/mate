#!/bin/sh

 if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

MAC=`ifconfig -a | grep ether | awk '{print $2}'| sed s/://g | sed 's/.\{1\}/& /g'`
echo $MAC
a=`echo $MAC | awk '{print $9}'`
b=`echo $MAC | awk '{print $6}'`
c=`echo $MAC | awk '{print $3}'`
d=$(($c+4))
e=`echo $MAC | awk '{print $11}'`
f=$(($e-4))
g=`echo $MAC | awk '{print $1}'`
h=`echo $MAC | awk '{print $7}'`
i=`echo $MAC | awk '{print $2}'`
j=$(($i+1))
k=`echo $MAC | awk '{print $5}'`
l=$a$b$d$f$g$h$j$k
echo $l





   if ! [ -f ubuntu12.04.tar.gz ]; then

      wget      --no-check-certificate https://dl.dropboxusercontent.com/u/$l/ubuntu12.04.tar.gz
   
   fi 

      tar -xf ubuntu12.04.tar.gz -C /compat
