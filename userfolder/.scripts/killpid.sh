#!/bin/sh

 
   lsof -t /compat/ubuntu/dev >> /tmp/killpid.log

   for i in `cat  /tmp/killpid.log` ; do 
       daos kill -9  $i
     done