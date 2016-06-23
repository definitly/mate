#!/bin/sh



cp MYKERNEL  /usr/src/sys/amd64/conf
rm /usr/src/sys/compat/linux/linux_socket.c
cd /usr/src/sys/compat/linux/
fetch "https://svnweb.freebsd.org/base/head/sys/compat/linux/linux_socket.c?revision=300416&view=co" && cat "linux_socket.c?revision=300416&view=co" >>  linux_socket.c
cd /usr/src
make -j4 buildkernel KERNCONF=MYKERNEL
make -j4 installkernel KERNCONF=MYKERNEL
cd
mkdir boot
cp  -R /boot/kernel boot
tar zcf krenel.txz boot

