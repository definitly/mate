#!/bin/sh




app="liveall/"

flashVer="LNX 11,2,202,451"
swfUrl="http://wds.liveall.tv/jwplayer.flash.swf"
#tcUrl="rtmp://50.22.223.47/liveall/"
pageUrl="http://liveall.tv/player.php?streampage=z38ww&width=728&height=480"
#play="mulsi59807eestoofk?keys=QFs_H0XPKku8W_v1Tg9BFw&keyt=1429969101"

play=$(sed -n '1p' play_tcUrl) 
        tcUrl=$(sed -n '2p' play_tcUrl)

          


rtmpdump -r $tcUrl -a $app -f $flashVer -W $swfUrl -p $pageUrl  -y  $play  | mplayer -cache 2048 -cache-min 30 -noautosub -

