#!/bin/sh
keystream=

ffmpeg -f x11grab -s  1280x720  -r 24 -i :0.0+85,36 -c:v libx264 \
       -preset fast -pix_fmt yuv420p -s 800x600 -threads 0 \
       -f flv "rtmp://live.twitch.tv/app/$keystream"