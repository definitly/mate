#!/bin/sh


sysctl compat.linux.osrelease=2.6.32
kldload fdescfs linprocfs linsysfs tmpfs


         

m1=$(mount | grep "/compat/ubuntu/dev" )
m2=$(mount | grep "/compat/ubuntu/proc" )
m3=$(mount | grep "/compat/ubuntu/var/run/shm" )
m4=$(mount | grep "/compat/ubuntu/var/run/dbus" )
m5=$(mount | grep "/compat/ubuntu/sys" )
rm /compat/linux


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
       mount -t  linprocfs  linproc /compat/linux/proc

         fi



              if ! [ -d "/compat/linux/var/run/shm" ]; then
                  echo 'creat'
                        mkdir -p /compat/ubuntu/var/run/shm
              fi

  
             if ! [ -d "/compat/linux/var/run/dbus" ]; then
                  echo 'creat'
                         mkdir -p /compat/ubuntu/var/run/dbus
              fi
              

              if ! [ -d "/compat/linux/var/run/utmp" ]; then
                         mkdir -p /compat/linux/var/run/utmp
              fi
              
             if ! [ -e  "/compat/linux/dev/shm" ]; then
                       echo 'ff'
                        ln -s /var/run/shm /compat/linux/dev/shm  
                
                       
              fi
             
 
              if  [ -z  "$m3" ]; then
                       echo 'не смонтировано'
                        
                mount -t tmpfs tmpfs /compat/linux/var/run/shm
                       
              fi


             if  [ -z  "$m4" ]; then
                       echo 'не смонтировано'
                        
                mount -t nullfs /var/run/dbus   /compat/linux/var/run/dbus
                       
              fi

           if  [ -z  "$m5" ]; then
                       echo 'не смонтировано'
                        
                 mount -t linsysfs linsys /compat/linux/sys
                       
              fi
             
 
             chmod 1777 /compat/linux/var/run/shm