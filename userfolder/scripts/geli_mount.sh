#!/bin/sh




echo "введите имя файла"
read file


                        doas mdconfig -at vnode -f $file
                        doas geli attach /dev/md0
                        doas mkdir /mnt/geli
                        doas mount /dev/md0.eli /mnt/geli

                              read -r -p "файл примонтирован в /mnt/geli после завершения нажмите любую клавишу" AMSURE 
                               echo "" 1>&2 
                   
                    while true; do
                    
                    doas umount /dev/md0.eli
                    m1=$(mount | grep "/dev/md0.eli" )
                        if  [ -z "$m1" ]; then 
                         
                            
                            break
                        else           
                            read -r -p "устройство занято отмонтируйте  /mnt/geli и  нажмите любую клавишу" AMSURE 
                        fi
 done

doas geli detach md0.eli
doas mdconfig -d -u 0
