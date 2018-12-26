#!/bin/sh
 



wget "http://192.168.1.40:6878/playlist/Fdw5tID.m3u?category=tv" -O Fdw5tID.m3u

sshpass -p  639639 scp Fdw5tID.m3u  pi@192.168.1.45:/var/www/html