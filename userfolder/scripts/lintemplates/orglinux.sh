#!/usr/local/bin/bash



 

             umount /compat/linux/proc
             rm /compat/linux
             ln -s /linux /compat/linux
             
             
   nspluginwrapper -a -i

m1=$(mount | grep "/linux/proc" )
    

   if  [ -z "$m1" ]; then 
       echo 'не смонтировано'
       mount -t linprocfs linprocfs /compat/linux/proc

        fi

  if ! [ -d "/home/definitly/.mozilla/plugins" ]; then
                  echo 'no directory'
                  cp -R plugins /home/definitly/.mozilla     
              fi


  

    