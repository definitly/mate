#!/bin/sh

 
   lsof -t /usr/local/lib/linux-tor-browser/Browser/firefox >> /tmp/killpid.log

   for i in `cat  /tmp/killpid.log` ; do 
       doas kill -9  $i
     done