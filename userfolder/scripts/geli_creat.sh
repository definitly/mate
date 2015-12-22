#!/bin/sh
echo "введите имя файла который хотите создать"
read file
echo "введите размер файла в мегабайтах"
read size
dd if=/dev/zero of=$file  bs=1m count=$size
sudo mdconfig -at vnode -f $file
sudo geli init /dev/md0
sudo geli attach /dev/md0
sudo newfs -U -m 0 /dev/md0.eli
sudo geli detach md0.eli
sudo mdconfig -d -u 0 