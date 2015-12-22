#!/bin/sh
#eurosport 2



app="ondemand"

flashVer="LNX 11,2,202,327"
swfUrl="http://cdn.livestream.com/chromelessPlayer/v21/playerapi.swf?browseMode=false&jsEnabled=false&hideInfo=true&allowchat=false&time=&hideChannelBranding=true&showMoreVideos=false&t=236096&textLines=2&mode=false&autoPlay=true&lschannel=true"
tcUrl="rtmp://extondemand.livestream.com/ondemand"
pageUrl="http://www.livestream.com/embed/nascarchannel?showMoreVideos=false&hideInfo=true&autoPlay=true&lschannel=true&browseMode=false&textLines=2&hideChannelBranding=true&mode=false&allowchat=false&layout=4&t=236096"
play="trans/union/mogulus-user-files/chnascarchannel/2008/05/03/10f34c7f-0261-4d53-8915-664327a26531"




rtmpdump -r $tcUrl -a $app -f $flashVer -W $swfUrl -p $pageUrl  -y  $play  | mplayer -

Property 'swfUrl' String 'http://www.eucast.tv/player5.9.swf'
Property 'tcUrl' String 'rtmp://31.220.0.82:1935/live'
Property 'pageUrl' String 'http://www.eucast.tv/embed.php?live=euro2x&vw=620&vh=490'
euro2x

