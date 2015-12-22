#!/bin/sh


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


kldload ipfw

FwCMD="/sbin/ipfw"

${FwCMD} -q  -f flush
${FwCMD} add allow ip from any to any via lo0
${FwCMD} add deny ip from any to 127.0.0.0/8
${FwCMD} add deny ip from 127.0.0.0/8 to any

${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935
${FwCMD} add 40 fwd 127.0.0.1, 1935 tcp from any to any 1935 not uid proxy
${FwCMD} add allow ip from any to any via ale0

rtmpsrv 

kldunload ipfw

#sed -r 's/-o.+//'