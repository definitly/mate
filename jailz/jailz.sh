#!/bin/sh



CURRENTDIRECTORY=$(pwd)




     zfs create -o mountpoint=/jailz rpool/jailz
     zfs create rpool/jailz/deb-master
     mkdir /jailz/etc
     cp $CURRENTDIRECTORY/etc/jail.conf  /jailz/etc/
     cp $CURRENTDIRECTORY/etc/fstab.deb-master  /jailz/etc/
     kldload fdescfs linprocfs linsysfs tmpfs 
     echo 'jail_enable="YES"' >> /etc/rc.conf
     debootstrap --foreign --arch=i386 precise /jailz/deb-master http://ftp.ubuntu.com/ubuntu/
     mkdir -p  /jailz/deb-master/run/rw
     mkdir -p  /jailz/deb-master/run/shm
     rm /jailz/deb-master/var/cache/apt/archives/sysvinit_*
     mount -t linprocfs none /jailz/deb-master/proc
     mount -t devfs none /jailz/deb-master/dev
     mount -t linsysfs none /jailz/deb-master/sys
     mount -t tmpfs none /jailz/deb-master/lib/init/rw 
     cp inchroot.sh /jailz/deb-master/bin
     sysctl  compat.linux.osrelease=2.6.32
     chroot /jailz/deb-master /bin/inchroot.sh
     
     umount /jailz/deb-master/proc
     umount /jailz/deb-master/dev
     umount /jailz/deb-master/sys
     umount /jailz/deb-master/lib/init/rw
     echo 'deb  http://ftp.ubuntu.com/ubuntu/ precise main contrib non-free' >> /jailz/deb-master/etc/apt/sources.list

     cd /jailz/deb-master/etc/rc0.d
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
      mv K02rsyslog _K02rsyslog
 cd /jailz/deb-master/etc/rc1.d
      mv K02rsyslog _K02rsyslog
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
 cd /jailz/deb-master/etc/rc2.d
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
 cd /jailz/deb-master/etc/rc3.d
      mv S01rsyslog   _S01rsyslog
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
 cd /jailz/deb-master/etc/rc4.d
         mv S01rsyslog   _S01rsyslog
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
 cd /jailz/deb-master/etc/rc5.d
         mv S01rsyslog   _S01rsyslog
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog
 cd /jailz/deb-master/etc/rc6.d
      mv K02rsyslog _K02rsyslog
      mv S10rsyslog _S10rsyslog
      mv K90rsyslog _K90rsyslog



     cp ubuntu.sh /jailz/deb-master/root
     chroot /jailz/deb-master /root/ubuntu.sh