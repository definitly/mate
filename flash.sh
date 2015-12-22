#!/bin/sh
login=definitly
login1=ff
#mount and restart  sysctl
                     mkdir -p /compat/linux/proc
                     mount linproc
                     /etc/rc.d/abi start
                     /etc/rc.d/sysctl start

#flash

                     mkdir /usr/local/lib/browser_plugins
                     


                     mkdir -p  /home/$login/.mozilla/plugins
                     chown  -R      $login:wheel       /home/$login/.mozilla/plugins
                     chown  -R      $login:wheel       /home/$login/.mozilla/


                      
                     mkdir -p  /home/$login1/.mozilla/plugins
                     chown  -R      $login1:wheel       /home/$login1/.mozilla/plugins
                     chown  -R      $login1:wheel       /home/$login1/.mozilla/
