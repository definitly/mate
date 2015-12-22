#!/bin/sh 


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
cd /tmp
wget --content-disposition https://www.cubbyusercontent.com/pl/ffmpeg.tar.gz/_8361dabceee9409fba3a195ff1316223
                           

tar zxvf ffmpeg.tar.gz

cd ffmpeg  
 pkg add ffmpeg-2.3.6_2,1.txz

