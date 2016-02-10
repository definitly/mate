#!/bin/sh


 if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi



sed  's/SocksPort 192.168.1.33:9050 # Bind to this address:port too./SocksPort 192.168.1.38:9050 # Bind to this address:port too./g' /usr/local/etc/tor/torrc >  /usr/local/etc/tor/torrc.bak 

mv /usr/local/etc/tor/torrc.bak /usr/local/etc/tor/torrc


sed  's/proxyAddress = "192.168.1.33"    # IPv4 only/proxyAddress = "192.168.1.38"    # IPv4 only/g'    /usr/local/etc/polipo/config > /usr/local/etc/polipo/config.bak

mv /usr/local/etc/polipo/config.bak /usr/local/etc/polipo/config  


sed 's/socksParentProxy = "192.168.1.33:9050"/socksParentProxy = "192.168.1.38:9050"/g' /usr/local/etc/polipo/config >  /usr/local/etc/polipo/config.bak

mv /usr/local/etc/polipo/config.bak  /usr/local/etc/polipo/config 

service tor    restart
service polipo restart