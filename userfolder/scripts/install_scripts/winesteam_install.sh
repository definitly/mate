#!/bin/sh
login=definitly


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


fetch  https://dl.dropboxusercontent.com/u/$l/winesteam/winesteam


sudo mdconfig -at vnode -f winesteam 
sudo geli attach   /dev/md0
sudo mount /dev/md0.eli /mnt

tar xpvf /mnt/winesteam.tar.xz  -C  ~/
sudo umount /dev/md0.eli
sudo geli detach md0.eli
sudo mdconfig -d -u 0 