#!/bin/sh
# rc.conf loader.conf make.conf pkg.conf profile csh.login fstab sysctl.conf



#/etc/rc.conf

 
                     
 #                   echo 'hald_enable="yes"'            >>                   /etc/rc.conf
                     echo 'dbus_enable="yes"'            >>                   /etc/rc.conf
                     echo 'apache22_enable="YES"'        >>                   /etc/rc.conf
                     echo 'linux_enable="YES"'           >>                   /etc/rc.conf
                     
                     echo 'dahdi_enable="YES"'           >>                   /etc/rc.conf
#                    echo 'keymap=ru.koi8-r'             >>                   /etc/rc.conf
#                    echo 'scrnmap=koi8-r2cp866'         >>                   /etc/rc.conf
#                    echo 'font8x16=cp866b-8x16'         >>                   /etc/rc.conf
#                    echo 'font8x14=cp866-8x14'          >>                   /etc/rc.conf
#                    echo 'font8x8=cp866-8x8'            >>                   /etc/rc.conf
                     echo 'asterisk_enable="YES"'        >>                   /etc/rc.conf
                     echo 'devfs_system_ruleset="localrules"'          >>                   /etc/rc.conf
                     echo 'vboxnet_enable="YES"'         >>                   /etc/rc.conf
                     echo 'powerd_enable="yes"'          >>                   /etc/rc.conf
                     echo 'powerd_flags="-a adp -p 100 -r 90"'   >>           /etc/rc.conf
                     echo 'nginx_enable="YES"'           >>                   /etc/rc.conf
                     echo 'php_fpm_enable="YES"'         >>                   /etc/rc.conf
                     echo 'kld_list="radeonkms"'         >>                   /etc/rc.conf
                     echo 'KLD_LIST="linux linsysfs linprocfs"'  >>           /etc/rc.conf
                     echo 'allscreens_flags=" MODE_283"'         >>           /etc/rc.conf
#/boot/defaults/loader.conf 
                     echo  'nvidia_load="YES" '           >>                   /boot/defaults/loader.conf
                     echo  'vboxdrv_load="YES"'           >>                   /boot/defaults/loader.conf
                     echo  'coretemp_load="YES" '         >>                   /boot/defaults/loader.conf
                     echo  'cpufreq_load="yes"'           >>                   /boot/defaults/loader.conf
                     echo  'vfs.zfs.prefetch_disable="0"' >>                   /boot/defaults/loader.conf
                     echo  'machdep.disable_mtrrs=1'      >>                   /boot/defaults/loader.conf
                     echo  'kern.vty=vt'                  >>                   /boot/defaults/loader.conf
#/boot/loader.conf

                    echo  'rsu-rtl8712fw_load="YES"'      >>                   /boot/loader.conf
                    echo  'legal.realtek.license_ack=1'   >>                   /boot/loader.conf



#/etc/make.conf
                     echo 'WITHOUT_NOUVEAU=YES'           >>                   /etc/make.conf
                     echo 'BATCH=y'                       >>                   /etc/make.conf
                     echo 'WITH_PKGNG=yes'                >>                   /etc/make.conf
                     echo 'OVERRIDE_LINUX_BASE_PORT=c6'          >>            /etc/make.conf 
                     echo 'OVERRIDE_LINUX_NONBASE_PORTS=c6'      >>            /etc/make.conf
                     
#/etc/profile
                     echo 'LANG=ru_RU.UTF-8; export LANG'        >>             /etc/profile
                     echo 'MM_CHARSET=UTF-8; export MM_CHARSET'  >>             /etc/profile
 
#/etc/csh.login
                     echo 'setenv LANG ru_RU.UTF-8' >>                           /etc/csh.login
                     echo 'setenv MM_CHARSET UTF-8' >>                           /etc/csh.login

#/etc/fstab
                     echo 'linproc /compat/linux/proc linprocfs rw  0 0' >>       /etc/fstab
 #                    echo 'tmpfs        /tmp            tmpfs        rw 0' >>    /etc/fstab
                     echo 'fdesc   /dev/fd            fdescfs   rw  0 0' >>       /etc/fstab
                     echo 'proc    /proc               procfs   rw  0 0' >>       /etc/fstab
                     echo '/dev/da0 /mnt             ufs      rw,noauto 0 0' >>   /etc/fstab

#                     echo 'linsys  /compat/linux/sys   linsysfs  rw 0 0' >>      /etc/fstab
#/etc/sysctl.conf
                     echo "compat.linux.osrelease=2.6.32" >>                      /etc/sysctl.conf
                     echo "vfs.usermount=1" >> /etc/sysctl.conf

#/usr/local/etc/doas.conf

                    echo -e "permit nopass keepenv definitly\n"            >>    /usr/local/etc/doas.conf


#root .cshrc

                    echo  'set prompt="%{^[[40;31;1m%} %{^[[40;31;1m%} %N@%m:%~ %# "' >> /root/.cshrc

#/etc/devfs.conf
            
                    echo 'link /tmp shm'                             >>             /etc/devfs.conf
                    echo 'perm    da0     0666'                      >>             /etc/devfs.conf
                    echo 'own     da0     root:operator'             >>             /etc/devfs.conf
#/etc/devfs.rules

                    echo '[localrules=10]'                            >>   /etc/devfs.rules
                    echo 'add path 'usb/*' mode 0666 group operator'  >>   /etc/devfs.rules
                    echo 'add path 'da*'   mode 0666 group operator'  >>   /etc/devfs.rules

#/etc/sysctl.conf   
                   echo 'kern.coredump=0'                 >>           /etc/sysctl.conf 
                   echo 'kern.ipc.shm_allow_removed=1'    >>           /etc/sysctl.conf 
 
#link ssl certificate verify 
                   ln -sf /usr/local/share/certs/ca-root-nss.crt /etc/ssl/cert.pem
  
cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime 


#/etc/libmap32.conf
                   echo '/usr/local/lib  /usr/local/lib32' >> /etc/libmap32.conf

#lib
ln -s /lib/libkvm.so.7 /lib/libkvm.so.6
ln -s /usr/lib/libpam.so.6 /usr/lib/libpam.so.5


#6-u6hbv-rys4v-7ci39-4x89x-s4y2m
# en pass k..........3 pass.png

## fftor settings for ff user

                      echo 'setenv DISPLAY :0'       >> /home/ff/.cshrc

##rtorrent settings for rtorrent user


                      echo 'setenv DISPLAY :0'       >> /home/rtorrent/.cshrc











