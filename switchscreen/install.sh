#!/bin/sh
login=definitly
CURRENTDIRECTORY=$(pwd)
        cp $CURRENTDIRECTORY/switchscreen     /usr/local/bin
        cp $CURRENTDIRECTORY/togglescreen.sh  /usr/local/bin


# edit xbindkeysrc

                      echo   '"/usr/local/bin/togglescreen.sh"'          >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:53'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + x'                                  >> /home/$login/.xbindkeysrc
        