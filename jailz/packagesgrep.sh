#!/bin/sh


#arch=i386
arch=amd64
ubuntuversion=yakkety
  for i in $(cat listpackages_14.04_x86_64); do
          packages=$(echo $i | sed "s/_.*//" |  rev | sed -r 's/\/.+//' | rev)

  href=$(curl   http://packages.ubuntu.com/$ubuntuversion/$arch/$packages/download | grep "de.archive.ubuntu.com" | grep -Eo 'href="[^"]*' | cut -d\" -f2- | tail -n 1 | sed 's,http://de.archive.ubuntu.com/ubuntu/,,g')
  href2=$(curl   http://packages.ubuntu.com/$ubuntuversion/$arch/$packages/download | grep "security.ubuntu.com" | grep -Eo 'href="[^"]*' | cut -d\" -f2- | tail -n 1 | sed 's,http://security.ubuntu.com/ubuntu/,,g')
echo $href >> 1
echo $href2 >> 1
  
             done