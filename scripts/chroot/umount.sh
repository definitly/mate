#!/bin/sh


/usr/local/etc/rc.d/dbus restart

umount /compat/ubuntu/proc
umount /compat/ubuntu/run/shm
umount /compat/ubuntu/dev