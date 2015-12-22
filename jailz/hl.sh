#!/compat/linux/bin/bash

# figure out the absolute path to the script being run a bit
# non-obvious, the ${0%/*} pulls the path out of $0, cd's into the
# specified directory, then uses $PWD to figure out where that
# directory lives - and all this in a subshell, so we don't affect
# $PWD

GAMEROOT="/usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life"

#determine platform
UNAME=`uname`
if [ "$UNAME" == "Darwin" ]; then
   # prepend our lib path to LD_LIBRARY_PATH
   export DYLD_LIBRARY_PATH=${GAMEROOT}:$DYLD_LIBRARY_PATH
elif [ "$UNAME" == "FreeBSD" ]; then
   # prepend our lib path to LD_LIBRARY_PATH
   export LD_LIBRARY_PATH=${GAMEROOT}:$LD_LIBRARY_PATH
fi

if [ -z $GAMEEXE ]; then
	if [ "$UNAME" == "Darwin" ]; then
	  GAMEEXE=hl_osx
	elif [ "$UNAME" == "FreeBSD" ]; then
	  GAMEEXE=hl_linux
	fi
fi



# and launch the game
cd "$GAMEROOT"

STATUS=42
while [ $STATUS -eq 42 ]; do
          export LD_LIBRARY_PATH=${GAMEROOT}:$LD_LIBRARY_PATH
	 /usr/home/definitly/.local/share/Steam/steamapps/common/Half-Life/hl_linux $@
	
done
exit $STATUS
