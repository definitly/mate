#!/bin/sh
#precise 12.04
#trusty  14.04
#xenial  16.04

#arch=i386
arch=amd64
ubuntuversion=artfu
UBUNTU=17.04



  for i in $(cat listpackages_14.04); do
          packages=$(echo $i | sed "s/_.*//" |  rev | sed -r 's/\/.+//' | rev)

  href=$(curl   https://packages.ubuntu.com/$ubuntuversion/$arch/$packages/download | grep "de.archive.ubuntu.com" | grep -Eo 'href="[^"]*' | cut -d\" -f2- | tail -n 1 | sed 's,http://de.archive.ubuntu.com/ubuntu/,,g')
  href2=$(curl   https://packages.ubuntu.com/$ubuntuversion/$arch/$packages/download | grep "security.ubuntu.com" | grep -Eo 'href="[^"]*' | cut -d\" -f2- | tail -n 1 | sed 's,http://security.ubuntu.com/ubuntu/,,g')
  
   if [ "$arch" == "i386" ]; then
 

  echo $href >>  listpackages_$UBUNTU
  echo $href2 >> listpackages_$UBUNTU
  
   fi 

    echo $href >>  listpackages_$UBUNTU"_x86_64"
    echo $href2 >> listpackages_$UBUNTU"_x86_64"

             done