#!/bin/sh

login=definitly
CURRENTDIRECTORY=$(pwd)



cp $CURRENTDIRECTORY/switchbackground      /usr/local/bin
cp $CURRENTDIRECTORY/dzenconky             /usr/local/bin
cp $CURRENTDIRECTORY/dzenconkyrc           /home/$login/.dzenconkyrc
chown  -R      $login:wheel                /home/$login/.dzenconkyrc


cp $CURRENTDIRECTORY/dzen2-on-off          /usr/local/bin


# edit xbindkeysrc

                      echo   '"/usr/local/bin/dzen2-on-off"'             >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:40'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + d'                                  >> /home/$login/.xbindkeysrc
        