#!/bin/sh




echo "введите имя файла"
read file


                        sudo mdconfig -at vnode -f $file
                        sudo geli attach /dev/md0
                        sudo mount /dev/md0.eli /mnt

                              read -n 1 -p "файл примонтирован в /mnt после завершения нажмите любую клавишу" AMSURE 
                               echo "" 1>&2 
                   
                    while true; do
                    
                    sudo umount /dev/md0.eli
                    m1=$(mount | grep "/dev/md0.eli" )
                        if  [ -z "$m1" ]; then 
                         
                            
                            break
                        else           
                            read -n 1 -p "устройство занято отмонтируйте  /mnt и  нажмите любую клавишу" AMSURE 
                        fi
 done

sudo geli detach md0.eli
sudo mdconfig -d -u 0
