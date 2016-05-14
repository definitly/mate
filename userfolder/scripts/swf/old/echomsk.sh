#!/bin/sh




app="echomsk/_definst_/"

flashVer="LNX 11,2,202,341"
swfUrl="http://echomsk.onlinetv.ru/play.swf?t=23346498571&s=gs83t2e71al1s6e5e9k9kppst6"
tcUrl="rtmp://cdn0.onlinetv.ru:1935/echomsk/_definst_/"
pageUrl="amf.string"
play="echomsk.stream?cid=0"




rtmpdump -r $tcUrl -a $app -f $flashVer -W $swfUrl -p $pageUrl  -y  $play  | mplayer -


