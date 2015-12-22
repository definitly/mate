#!/usr/local/bin/bash




curderictory=$(pwd)

  
   umount /compat/linux/proc
   umount /compat/linux/proc
   umount /compat/linux/dev
   rm /compat/linux
   rm -R /compat/ubuntu

   mkdir -p /compat/ubuntu
   cp /home/definitly/downloads/ubuntu-12.04-x86.tar.gz /compat/ubuntu/ubuntu-12.04-x86.tar.gz
   cd /compat/ubuntu/
   tar -zxvf /compat/ubuntu/ubuntu-12.04-x86.tar.gz
   cd /compat
   ln -s /compat/ubuntu /compat/linux
   
   cd $curderictory
   cp machine-id /compat/linux/etc
   cp ubuntu.sh /compat/linux/root/ubuntu.sh
   cp /etc/resolv.conf /compat/linux/etc
   