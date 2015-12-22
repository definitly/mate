#!/usr/local/bin/bash


           umount /compat/linux/proc
           rm /compat/linux 
           tar -zxvf /home/definitly/downloads/linux.tar.gz -C /home/definitly/templates
           ln -s /home/definitly/templates/ubuntu /compat/linux  
m1=$(mount | grep "/home/definitly/templates/ubuntu/dev" )
m2=$(mount | grep "/home/definitly/templates/ubuntu/proc" )
    if  [ -z "$m1" ]; then 
       echo 'не смонтировано'
       mount -t  devfs devfs /home/definitly/templates/ubuntu/dev

         fi


         if  [ -z "$m2" ]; then 
       echo 'не смонтировано2'
       mount -t  linprocfs linprocfs  /home/definitly/templates/ubuntu/proc

         fi
