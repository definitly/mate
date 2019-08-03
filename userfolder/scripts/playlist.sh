#!/bin/sh

wget  "http://192.168.1.40:6878/playlist/uRop8F3.m3u?category=tv" -O list.m3u
sshpass -p  639639 scp list.m3u  pi@192.168.1.45:/var/www/html