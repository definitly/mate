#!/bin/sh

login=definitly
CURRENTDIRECTORY=$(pwd)

cp  /usr/local/bin/conky                                  /usr/local/bin/conkyscroll


cp $CURRENTDIRECTORY/scrollconky                  /usr/local/bin
cp $CURRENTDIRECTORY/scrollconkyrc                /home/$login/.scrollconkyrc

cp $CURRENTDIRECTORY/conkyscroll-on-off           /usr/local/bin



# edit xbindkeysrc
                       echo   '"/usr/local/bin/conkyscroll-on-off"'        >> /home/$login/.xbindkeysrc
                       echo   'm:0xc + c:39'                               >> /home/$login/.xbindkeysrc
                       echo   'Control+Alt + s'                            >> /home/$login/.xbindkeysrc