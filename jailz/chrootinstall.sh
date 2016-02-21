#!/bin/sh
CURRENTDIRECTORY=$(pwd)
ubuntu_vesrsion=ubuntu-14.04-x86-minimal.tar.gz






mkdir ubuntu
tar -zxvf      $ubuntu_vesrsion        -C  ubuntu
cp /etc/resolv.conf  ubuntu/etc

cp libflashsupport.so ubuntu/usr/lib
brandelf -t Linux ubuntu/lib/i386-linux-gnu/ld-2.15.so
mkdir -p ubuntu/dev/shm
rm ubuntu/var/run
mkdir -p ubuntu/var/run/shm
   

tar --unlink -xpJf /pkg/nvidia-driver-304-304.128.txz -C $CURRENTDIRECTORY

cp $CURRENTDIRECTORY/compat/linux/usr/lib/libGL.so.304.128                    $CURRENTDIRECTORY/ubuntu/usr/lib
cp $CURRENTDIRECTORY/compat/linux/usr/lib/libnvidia-glcore.so.304.128          $CURRENTDIRECTORY/ubuntu/usr/lib
cp $CURRENTDIRECTORY/compat/linux/usr/lib/libnvidia-tls.so.304.128             $CURRENTDIRECTORY/ubuntu/usr/lib
cd    $CURRENTDIRECTORY/ubuntu/usr/lib
ln -s libGL.so.304.128   libGL.so.1
cd   $CURRENTDIRECTORY


 cp -R alsa-lib  ubuntu/usr/lib/i386-linux-gnu



