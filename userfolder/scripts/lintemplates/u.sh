#!/usr/local/bin/bash


umount /compat/linux/proc
umount /compat/linux/run/shm
umount /compat/linux/dev

     
     rm /compat/linux
     rm -R /compat/ubuntu      
     tar -zxvf /home/definitly/downloads/ubuntu.tar.gz -C /compat/
     
     ln -s /compat/ubuntu /compat/linux
     cp machine-id  /compat/linux/etc/machine-id