#!/bin/sh
login=definitly
CURRENTDIRECTORY=$(pwd)

              cp $CURRENTDIRECTORY/tint2-on-off   /usr/local/bin

# edit xbindkeysrc

            echo   '"/usr/local/bin/tint2-on-off"'        >> /home/$login/.xbindkeysrc
            echo   'm:0x40 + c:28'                        >> /home/$login/.xbindkeysrc
            echo   'Mod4 + t'                             >> /home/$login/.xbindkeysrc