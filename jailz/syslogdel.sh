#!/bin/sh 
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