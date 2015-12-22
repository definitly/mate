#!/bin/sh 
login=definitly
CURRENTDIRECTORY=$(pwd)


cp $CURRENTDIRECTORY/screensavon.sh      /usr/local/bin

cp $CURRENTDIRECTORY/screensavoff.sh     /usr/local/bin



# edit xbindkeysrc
                       echo   '"/usr/local/bin/screensavon.sh"'      >>       /home/$login/.xbindkeysrc
                       echo   'm:0x40 + c:39'                        >>       /home/$login/.xbindkeysrc
                       echo   'Mod4 + s'                             >>       /home/$login/.xbindkeysrc
 
                       echo   '"/usr/local/bin/screensavoff.sh"'     >>       /home/$login/.xbindkeysrc
                       echo   'm:0x40 + c:56'                        >>       /home/$login/.xbindkeysrc
                       echo   'Mod4 + b'                             >>       /home/$login/.xbindkeysrc