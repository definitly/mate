#!/bin/sh




echo "введите имя файла"
read file


                        daos mdconfig -at vnode -f $file
                        daos geli attach /dev/md0
                        daos mkdir /mnt/geli
                        daos mount /dev/md0.eli /mnt/geli

                              read -r -p "файл примонтирован в /mnt/geli после завершения нажмите любую клавишу" AMSURE 
                               echo "" 1>&2 
                   
                    while true; do
                    
                    daos umount /dev/md0.eli
                    m1=$(mount | grep "/dev/md0.eli" )
                        if  [ -z "$m1" ]; then 
                         
                            
                            break
                        else           
                            read -r -p "устройство занято отмонтируйте  /mnt/geli и  нажмите любую клавишу" AMSURE 
                        fi
 done

daos geli detach md0.eli
daos mdconfig -d -u 0
