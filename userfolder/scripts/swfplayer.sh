#!/usr/local/bin/bash

sudo kldload ipfw
FwCMD="/sbin/ipfw"

sudo ${FwCMD} -q  -f flush
sudo ${FwCMD} add allow ip from any to any via lo0 > /dev/null
sudo ${FwCMD} add deny ip from any to 127.0.0.0/8 > /dev/null
sudo ${FwCMD} add deny ip from 127.0.0.0/8 to any > /dev/null

sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 > /dev/null 
sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 not uid proxy > /dev/null 
#sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443
#sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443 not uid proxy 
sudo ${FwCMD} add allow ip from any to any via ale0 > /dev/null

                     rtmpsrv >  /tmp/rtmp1  2>&0  &

               sudo  tcpdump -w file.tcpdump -s 0 -i ale0   > /dev/null 2>&1   &      


while  ! [  "$m3u8" -o  "$rtmp2" ]  ; do

 m3u8=$(tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri"  | grep m3u8)
 rtmp2=$(cat /tmp/rtmp1 | grep rtmp://)
 
 sleep 1;

done 

     killall -9 rtmpsrv
sudo killall -9 tcpdump


if   ! [   -z "$m3u8"] ; then




 host=$(tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri" | grep m3u8 | head -n 1 | awk ' {print $1} ')
     GET=$(tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri" | grep m3u8 | head -n 1 | awk ' {print $3} ')
     url=http://$host$GET


echo $url 

mpv $url  > /dev/null 2>&1



fi

sudo  kldunload ipfw
sed -r 's/-o.+//' /tmp/rtmp1 >  /tmp/rtmp2
rtmp=$(head -n 2 /tmp/rtmp2 | tail -n 1 | sed  's/$/ | mpv --cache=2048  -   /')
echo $rtmp'> /dev/null'
 rm *.flv
echo $rtmp'> /dev/null 2>&1'    

eval "$rtmp > /dev/null 2>&1"