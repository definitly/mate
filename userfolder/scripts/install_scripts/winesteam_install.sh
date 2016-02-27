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

sudo mdconfig -at vnode -f winesteam 
sudo geli attach  -j /tmp/winegeli   /dev/md0
sudo mount /dev/md0.eli /mnt

tar xf /mnt/wine.txz  -C  ~/
sudo umount /dev/md0.eli
sudo geli detach md0.eli
sudo mdconfig -d -u 0 