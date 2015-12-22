#!/bin/sh





sudo kldload ipfw

FwCMD="/sbin/ipfw"

sudo ${FwCMD} -q  -f flush
sudo ${FwCMD} add allow ip from any to any via lo0
sudo ${FwCMD} add deny ip from any to 127.0.0.0/8
sudo ${FwCMD} add deny ip from 127.0.0.0/8 to any

sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935
sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 not uid proxy
#sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443
#sudo ${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 443 not uid proxy
sudo ${FwCMD} add allow ip from any to any via ale0

 rtmpsrv >  /tmp/rtmp1

sudo  kldunload ipfw

sed -r 's/-o.+//' /tmp/rtmp1 >  /tmp/rtmp2
rtmp=$(head -n 2 /tmp/rtmp2 | tail -n 1 | sed  's/$/ | mpv --cache=2048  -   /')
echo $rtmp'> /dev/null'
sudo rm *.flv
echo '#!/bin/sh' >> runrtmp.sh
echo $rtmp'> /dev/null 2>&1'     >>  runrtmp.sh
chmod +x runrtmp.sh
./runrtmp.sh
rm runrtmp.sh
