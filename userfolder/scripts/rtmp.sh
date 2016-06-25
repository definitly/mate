#!/bin/sh

doas kldload ipfw
FwCMD="/sbin/ipfw"

doas ${FwCMD} -q  -f flush
doas ${FwCMD} add allow ip from any to any via lo0 > /dev/null
doas ${FwCMD} add deny ip from any to 127.0.0.0/8 > /dev/null
doas ${FwCMD} add deny ip from 127.0.0.0/8 to any > /dev/null
doas ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 > /dev/null 
doas ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 not uid proxy > /dev/null
doas ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443
doas ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443 not uid proxy
doas ${FwCMD} add allow ip from any to any via ale0 > /dev/null

rtmpsrv >  /tmp/rtmp1  2>&0  &


                 while   [ -z "$rt" ]  ; do

                         rt=$(cat /tmp/rtmp1 | grep rtmp://)
                         sleep 1;

                 done 

killall -9 rtmpsrv
doas  kldunload ipfw
sed -r 's/-o.+//' /tmp/rtmp1 >  /tmp/rtmp2
rtmp=$(head -n 2 /tmp/rtmp2 | tail -n 1 | sed  's/$/ | mpv --cache=2048  -   /')

rm *.flv
rm /tmp/rtmp1
rm /tmp/rtmp2

echo $rtmp'> /dev/null 2>&1' 
eval "$rtmp > /dev/null 2>&1"
