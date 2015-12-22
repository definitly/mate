#!/usr/local/bin/bash


sysctl compat.linux.osrelease=2.6.32
kldload fdescfs linprocfs linsysfs tmpfs


         

m1=$(mount | grep "/compat/ubuntu/dev" )
m2=$(mount | grep "/compat/ubuntu/proc" )
m3=$(mount | grep "/compat/ubuntu/run/shm" )

 if ! [ -e  "/compat/linux" ]; then
                       echo 'нету ссылк'
                       
                ln -s /compat/ubuntu /compat/linux
                       
              fi



 

       
 if  [ -z "$m1" ]; then 
       echo 'не смонтировано'
       mount -t  devfs devfs /compat/linux/dev

         fi


         if  [ -z "$m2" ]; then 
       echo 'не смонтировано'
       mount -t  linprocfs linprocfs  /compat/linux/proc

         fi



              if ! [ -d "/compat/linux/run/shm" ]; then
                  echo 'creat'
                        mkdir -p /compat/ubuntu/run/shm
              fi



              if ! [ -d "/compat/linux/run/utmp" ]; then
                         mkdir -p /compat/linux/run/utmp
              fi
              
             if ! [ -e  "/compat/linux/dev/shm" ]; then
                       echo 'ff'
                        ln -s /compat/linux/run/shm /compat/linux/dev/shm  
                
                       
              fi
             
 
              if  [ -z  "$m3" ]; then
                       echo 'не смонтировано'
                        
                mount -t tmpfs tmpfs /compat/linux/run/shm
                       
              fi
 
             chmod 1777 /compat/linux/run/shm