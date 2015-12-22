#!/bin/sh
login=definitly
   


          pw groupmod webcamd -m $login

#/etc/rc.conf

         echo 'webcamd_enable="YES"'         >>                   /etc/rc.conf
               

#/boot/defaults/loader.conf 

         echo  'cuse4bsd_load="YES" '        >>                   /boot/defaults/loader.conf


#/etc/devfs.conf
            
         echo 'perm video 0666'              >>                   /etc/devfs.conf


#/etc/devfs.rules


         echo 'add path 'video[0-9]*' mode 666' >>                 /etc/devfs.rules
