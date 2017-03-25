#!/bin/sh


#arch=i386
arch=amd64

  for i in $(cat listpackages); do
          packages=$(echo $i | sed "s/_.*//" |  rev | sed -r 's/\/.+//' | rev)

  href=$(curl   http://packages.ubuntu.com/yakkety/$arch/$packages/download | grep "de.archive.ubuntu.com" | grep -Eo 'href="[^"]*' | cut -d\" -f2- | tail -n 1 | sed 's,http://de.archive.ubuntu.com/ubuntu/,,g')

echo $href >> listpackages_16.10_x86_64
  
             done