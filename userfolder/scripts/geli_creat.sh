#!/bin/sh
echo "введите имя файла который хотите создать"
read file
echo "введите размер файла в мегабайтах"
read size
dd if=/dev/zero of=$file  bs=1m count=$size
doas mdconfig -at vnode -f $file
doas geli init /dev/md0
doas geli attach /dev/md0
doas newfs -U -m 0 /dev/md0.eli
doas geli detach md0.eli
doas mdconfig -d -u 0 