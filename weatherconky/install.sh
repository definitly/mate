#!/bin/sh


login=definitly
CURRENTDIRECTORY=$(pwd)


cp  /usr/local/bin/conky                           /usr/local/bin/conkyweather 
cp $CURRENTDIRECTORY/weather-on-off.sh      /usr/local/bin
ln -s  /usr/local/lib/libxcb.so.1.1.0       /usr/local/lib/libxcb.so.2

cp $CURRENTDIRECTORY/weatherconkyrc         /home/$login/.weatherconkyrc
chown  -R      $login:wheel                 /home/$login/.weatherconkyrc

# edit xbindkeysrc

                      echo   '"/usr/local/bin/weather-on-off.sh"'        >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:25'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + w'                                  >> /home/$login/.xbindkeysrc