#!/bin/sh




echo "введите имя файла"
read file


                        sudo mdconfig -at vnode -f $file
                        sudo geli attach /dev/md0
                        sudo mkdir /mnt/geli
                        sudo mount /dev/md0.eli /mnt/geli

                              read -r -p "файл примонтирован в /mnt/geli после завершения нажмите любую клавишу" AMSURE 
                               echo "" 1>&2 
                   
                    while true; do
                    
                    sudo umount /dev/md0.eli
                    m1=$(mount | grep "/dev/md0.eli" )
                        if  [ -z "$m1" ]; then 
                         
                            
                            break
                        else           
                            read -r -p "устройство занято отмонтируйте  /mnt/geli и  нажмите любую клавишу" AMSURE 
                        fi
 done

sudo geli detach md0.eli
sudo mdconfig -d -u 0
