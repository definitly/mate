#!/usr/local/bin/bash

sudo tcpdump -w file.tcpdump -s 0 -i ale0 &


              while   [ -z "$rt" ]  ; do

                        rt=$(  tcpdump -nnr file.tcpdump |  grep m3u8  )
                        sleep 1;

              done 

sudo killall -9 tcpdump


      array=( m3u8 m3u8? )

              for i in "${array[@]}"
      do
            host=$(tcpdump -nnr file.tcpdump | grep $i | awk ' {print $5} ' | sed 's/.$//'   | rev | sed -e 's/\([0-9]\)\./\1:/' | rev  )
            GET=$(tcpdump -nnr file.tcpdump  | grep $i | awk ' {print $24} ')
            url=http://$host$GET
echo $host
echo $GET
echo $url 

     done


mpv $url  > /dev/null 2>&1
sudo rm file.tcpdump