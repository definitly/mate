#!/bin/sh

filetcpdump=/tmp/1.tcpdump
daos rm $filetcpdump
daos tcpdump -w $filetcpdump -s 0 -i ale0 &

              while   [ -z "$rt" ]  ; do

                        rt=$(  tcpdump  -A -nnr $filetcpdump 2>&1 |  grep m3u8  )
                        sleep 1;

              done 
 
daos killall -9 tcpdump  &>/dev/null 

##########################################################################################################################################################
# all aviable hosts 

      echo -e "All aviable host:"
      echo "######################################################################################################"
      tcpdump -A -nnr $filetcpdump '(((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'   2>&1 \
      | egrep --line-buffered "^........(GET |HTTP\/|POST \  |HEAD )|^[A-Za-z0-9-]+: "\
      | sed -r 's/^........(GET |HTTP\/|POST |HEAD )/\n\1/g' | grep Host |  awk '{print $2}'  
      echo -e "######################################################################################################\n"
     


#############################################################################################################################################################
     
     host=$(tcpdump -A -nnr $filetcpdump '(((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'  2>&1  \
     | egrep --line-buffered "^........(GET |HTTP\/|POST \  |HEAD )|^[A-Za-z0-9-]+: " \
     | sed -r 's/^........(GET |HTTP\/|POST |HEAD )/\n\1/g' | grep Host | awk '{print $2}'\
     | sed -r '/^[a-z]/d' | head -n 1)

      array1="m3u8" 
      array2="m3u8?" 

              for i in $(seq 1 2) ;do

#     host=$(tcpdump -nnr $filetcpdump | grep $i | awk ' {print $5} ' | sed 's/.$//'   | rev | sed -e 's/\([0-9]\)\./\1:/' | rev  )
      GET=$(tcpdump -nnr $filetcpdump   2>&1 | eval grep "\$array$i" | awk ' {print $24} ')
  
#                  if [ -z "$GET" ] ;then 
#  
#                     GET=$(tcpdump -A  -nnr $filetcpdump  2>&1  | grep $i | awk ' {print $2} ')
#
#                  fi
 

                 while [ -z "$GET" ] ;do  
        
             GET=$(tcpdump -A -nnr $filetcpdump   2>&1 |  eval grep "\$array$i" | awk '{for (i=2;i<=4;i++)print $i}' | sed -n '/^.\{15\}/p')
            
                  done 

url=http://$host$GET
echo $host
echo -e "$GET\n"
echo -e "######################################################################################################\n"
echo -e "$url\n" 

mpv --no-resume-playback $url  > /dev/null 2>&1

             done



