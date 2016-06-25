#!/bin/sh
login=definitly

if [ -z "$1" ]
then
  echo "Значение не задано"
  echo "введите пароль"
  echo " пример: ./winesteam_install.sh password"
  exit 1
fi


    gdrive download -i 0Bz5rjpkCwREsNDh4NHltZF9SUkE



  echo $1 > /tmp/winegeli

doas mdconfig -at vnode -f winesteam 
doas geli attach  -j /tmp/winegeli   /dev/md0
doas mount /dev/md0.eli /mnt

tar xf /mnt/wine.txz  -C  ~/
doas umount /dev/md0.eli
doas geli detach md0.eli
doas mdconfig -d -u 0 