#!/usr/local/bin/bash
masa="`date +%k:%M`"
mp3="$HOME/1.mp3" #change this
if [ $# != 1 ]; then
 echo "please insert alarm time [24hours format]"
 echo "example ./alarm 13:00 [will ring alarm at 1:00pm]"
 exit;
fi

alarm=$1

#fix me with better regex >_<
if [[ "$alarm" =~ ^[1-2]?[0-9]\:[0-5][0-9]$ ]]; then
 echo "time now $masa"
 echo "alarm set to $alarm"
 echo "will play $mp3"
else
 echo "invalid clock format"
 exit;
fi

while [ $masa != $alarm ];do
 masa="`date +%k:%M`" #update time
 sleep 1 #dont overload the cpu cycle
done

echo $masa
if [ $masa = $alarm ];then
 echo ringggggggg

while true ; do
 mpv $mp3  

done
fi
exit
