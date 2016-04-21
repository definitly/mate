#!/compat/linux/bin/bash

# figure out the absolute path to the script being run a bit
# non-obvious, the ${0%/*} pulls the path out of $0, cd's into the
# specified directory, then uses $PWD to figure out where that
# directory lives - and all this in a subshell, so we don't affect
# $PWD

GAMEROOT="/usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life"

 sudo   mv /compat/linux/usr/lib/libpulse.so.0  /compat/linux/usr/lib/libpulse.so.0.bak

# and launch the game
cd "$GAMEROOT"


          export LD_LIBRARY_PATH=${GAMEROOT}:$LD_LIBRARY_PATH
	 /usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life/hl_linux -steam -game gearbox &


                    echo $! > $HOME/.local/share/Steam/steamapps/common/Half-Life/hl.pid


       while ! [  -z "$(ps aux | grep "$(cat $HOME/.local/share/Steam/steamapps/common/Half-Life/hl.pid)")" ] 

   do
   sleep 1

   done 
	



sudo mv /compat/linux/usr/lib/libpulse.so.0.bak   /compat/linux/usr/lib/libpulse.so.0

