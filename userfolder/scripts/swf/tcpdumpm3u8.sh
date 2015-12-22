#!/usr/local/bin/bash

 sudo tcpdump -w file.tcpdump -s 0 -i ale0

array=( m3u8 m3u8? )

for i in "${array[@]}"
do
	

     host=$(  tcpdump -A  -r file.tcpdump  | grep $i | head -n 1 | awk ' {print $2} ')

     url=http://$host$GET
echo $host
echo $GET
echo $url 

mpv $url

done

url=$(tcpdump -elA -r file.tcpdump | strings | grep -ao "http://.\+.m3u8" | head -n 1)
mpv $url

