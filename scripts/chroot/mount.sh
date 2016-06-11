#!/bin/sh


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
       mount -t  devfs devfs /compat/ubuntu/dev

         fi


         if  [ -z "$m2" ]; then 
       echo 'не смонтировано'
       mount -t  linprocfs linprocfs  /compat/ubuntu/proc

         fi



              if ! [ -d "/compat/ubuntu/run/shm" ]; then
                  echo 'creat'
                        mkdir -p /compat/ubuntu/run/shm
              fi



              if ! [ -d "/compat/ubuntu/run/utmp" ]; then
                         mkdir -p /compat/ubuntu/run/utmp
              fi
              
             if ! [ -e  "/compat/ubuntu/dev/shm" ]; then
                       echo 'ff'
                        ln -s /compat/ubuntu/run/shm /compat/ubuntu/dev/shm  
                
                       
              fi
             
 
              if  [ -z  "$m3" ]; then
                       echo 'не смонтировано'
                        
                mount -t tmpfs tmpfs /compat/ubuntu/run/shm
                       
              fi
 
             




chmod 1777 /compat/ubuntu/run/shm