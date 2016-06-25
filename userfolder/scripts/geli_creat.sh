#!/bin/sh
echo "введите имя файла который хотите создать"
read file
echo "введите размер файла в мегабайтах"
read size
dd if=/dev/zero of=$file  bs=1m count=$size
daos mdconfig -at vnode -f $file
daos geli init /dev/md0
daos geli attach /dev/md0
daos newfs -U -m 0 /dev/md0.eli
daos geli detach md0.eli
daos mdconfig -d -u 0 