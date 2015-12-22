#!/bin/sh

#copy ipfw.rules
cp     ipfw.rules    /etc

#copy squid.conf
cp squid.conf /usr/local/etc/squid
cp null.gif   /usr/local/www/nginx


mkdir -p /usr/local/squid/log && chown root:squid /usr/local/squid/log && chmod 770 /usr/local/squid/log

#                    echo 'firewall_enable="YES"'              >>             /etc/rc.conf
#                    echo 'firewall_script="/etc/ipfw.rules"'  >>             /etc/rc.conf
#                    echo 'squid_enable="YES"'                 >>             /etc/rc.conf