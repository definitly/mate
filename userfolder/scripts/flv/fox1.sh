#!/bin/sh
#eurosport 2



app="live"

flashVer="LNX 11,2,202,327"
swfUrl="http://p.jwpcdn.com/6/8/jwplayer.flash.swf"
tcUrl="rtmp://31.220.0.195:1935/live"
pageUrl="http://www.eucast.tv/embed.php?live=fox1&vw=620&vh=490"
play="fox1"




rtmpdump -r $tcUrl -a $app -f $flashVer -W $swfUrl -p $pageUrl  -y  $play  -o 1.avi


