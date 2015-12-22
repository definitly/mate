#!/bin/sh

 
   lsof -t /compat/ubuntu/dev >> /tmp/killpid.log

   for i in `cat  /tmp/killpid.log` ; do 
       sudo kill -9  $i
     done