#!/bin/sh

echo 'inetd_enable=YES'                                >>            /etc/rc.conf
echo 'micro_httpd     8000/tcp   #micro_httpd'         >>            /etc/services
echo 'micro_httpd      stream  tcp \
      nowait  nobody  /usr/local/sbin/micro_httpd\
      micro_httpd            /usr/local/www/nginx'     >>            /etc/inetd.conf