#!/bin/sh
#eurosport 2



app="live"

flashVer="LNX 11,2,202,327"
swfUrl="http://www.eucast.tv/player5.9.swf"
tcUrl="rtmp://31.220.0.82:1935/live"
pageUrl="http://www.eucast.tv/embed.php?live=euro2x&vw=620&vh=490"
play="euro2x"




rtmpdump -r $tcUrl -a $app -f $flashVer -W $swfUrl -p $pageUrl  -y  $play  | mplayer -

