#!/bin/sh


login=definitly
CURRENTDIRECTORY=$(pwd)


cp  /usr/local/bin/conky                           /usr/local/bin/conkytime 
cp $CURRENTDIRECTORY/timeconky-on-off.sh    /usr/local/bin


cp $CURRENTDIRECTORY/timeconkyrc            /home/$login/.timeconkyrc
chown  -R      $login:wheel                 /home/$login/.timeconkyrc

# edit xbindkeysrc

                      echo   '"/usr/local/bin/timeconky-on-off.sh"'             >> /home/$login/.xbindkeysrc
                      echo   'm:0xe + c:28'                                     >> /home/$login/.xbindkeysrc
                      echo   'Control+Alt + t'                                  >> /home/$login/.xbindkeysrc
        