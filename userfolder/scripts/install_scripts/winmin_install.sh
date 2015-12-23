#!/bin/sh
 

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










cd /tmp
# fetch  https://dl.dropboxusercontent.com/u/$l/virtualbox/winxpmini-firefox.ova
#ydcmd get  winxpmini-firefox.ova
fetch https://rocld.com/m224
mv m224 m224.ova
VBoxManage import m224.ova

 if ! [ -d ~/share/portable ]; then
echo 'No directory'
fetch  https://dl.dropboxusercontent.com/u/$l/portable.tar.gz
tar  -xf portable.tar.gz  -C ~/share
fi
 