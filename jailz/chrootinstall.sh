#!/bin/sh
CURRENTDIRECTORY=$(pwd)
ubuntu_vesrsion=ubuntu-12.04-x86.tar.gz 



#sudo mv /compat/linux /

  
      if ! [ -f  $ubuntu_vesrsion ]; then
                  
   fetch http://download.openvz.org/template/precreated/$ubuntu_vesrsion
fi


#sudo  ln -s /var/run/shm /dev/shm
#sudo  chmod 1777 /dev/shm


mkdir ubuntu
tar -zxvf      $ubuntu_vesrsion        -C  ubuntu
cp /etc/resolv.conf  ubuntu/etc
cp ubuntu.sh   ubuntu/root
cp libflashsupport.so ubuntu/usr/lib

   

tar --unlink -xpJf /pkg/nvidia-driver-304-304.128.txz -C $CURRENTDIRECTORY

cp $CURRENTDIRECTORY/compat/linux/usr/lib/libGL.so.304.128                    $CURRENTDIRECTORY/ubuntu/usr/lib
cp $CURRENTDIRECTORY/compat/linux/usr/lib/libnvidia-glcore.so.304.128          $CURRENTDIRECTORY/ubuntu/usr/lib
cp $CURRENTDIRECTORY/compat/linux/usr/lib/libnvidia-tls.so.304.128             $CURRENTDIRECTORY/ubuntu/usr/lib
cd    $CURRENTDIRECTORY/ubuntu/usr/lib
ln -s libGL.so.304.128   libGL.so.1
cd   $CURRENTDIRECTORY
cp  asoundrc  ~/.asoundrc

sudo cp -R alsa-lib  ubuntu/usr/lib/i386-linux-gnu


rm  ubuntu/var/run
chmod 777 ubuntu/tmp
#sudo sysctl compat.linux.osrelease=2.6.32
sudo chroot ubuntu /root/ubuntu.sh
sudo cp -R ubuntu /compat
