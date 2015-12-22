#!/bin/sh

if [ -z "$1" ]
then
  echo "Порядок использования: `basename $0` папка с mp4 файлами  "
  exit 0
fi

   cd  $1

   

      for filesmp4 in $(ls); do  
 
       ffmpeg -i $filesmp4 -acodec copy -vcodec copy -vbsf h264_mp4toannexb -f mpegts $filesmp4.ts

        done 

     for  list     in    $(find `pwd`  | grep mp4.ts) ; do 

             echo 'file '$list'' >> input.list
done


   ffmpeg -f concat -i input.list -y -vcodec copy -acodec copy -bsf:a aac_adtstoasc $1.mp4


  rm *ts
