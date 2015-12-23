#!/usr/local/bin/bash

 sudo tcpdump -w file.tcpdump -s 0 -i ale0 &


while   [ -z "$rt" ]  ; do

 rt=$( tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri"  | grep m3u8  )

 sleep 1;

done 

sudo killall -9 tcpdump

array=( m3u8 m3u8? )

for i in "${array[@]}"
do
	

 host=$(tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri" | grep $i | head -n 1 | awk ' {print $1} ')
     GET=$(tshark -r file.tcpdump -T fields -e http.host -e tcp.port -e http.request.uri "http&&http.request.uri" | grep $i | head -n 1 | awk ' {print $3} ')
     url=http://$host$GET
echo $host
echo $GET
echo $url 

mpv $url  > /dev/null 2>&1

done



