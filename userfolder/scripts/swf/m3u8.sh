#!/bin/sh

sudo tcpdump -w file.tcpdump -s 0 -i ale0
     tcpdump -A -n -s 0 -r file.tcpdump | grep m3u8   > /tmp/m3u8.tmp
     m3u8=$(head -n 1 /tmp/m3u8.tmp)
sudo rm      file.tcpdump
     mpv $m3u8

