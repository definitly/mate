#!/bin/sh

counter strike = csrtike
opposing force = gearbox



GAMEROOT="/usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life"

 daos   mv /compat/linux/usr/lib/libpulse.so.0  /compat/linux/usr/lib/libpulse.so.0.bak

# and launch the game
cd "$GAMEROOT"


          export LD_LIBRARY_PATH=${GAMEROOT}:$LD_LIBRARY_PATH
	 /usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life/hl_linux -steam -game $1 &


                    echo $! > $HOME/.local/share/Steam/steamapps/common/Half-Life/hl.pid


       while ! [  -z "$(ps aux | grep "$(cat $HOME/.local/share/Steam/steamapps/common/Half-Life/hl.pid)")" ] 

   do
   sleep 1

   done 
	



daos mv /compat/linux/usr/lib/libpulse.so.0.bak   /compat/linux/usr/lib/libpulse.so.0

