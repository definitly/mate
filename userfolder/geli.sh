#!/bin/sh
login=definitly






   if ! [ -f  freebsd ]; then
                  
  # fetch  https://dl.dropboxusercontent.com/u/$l/$k
   gdrive download -i  0Bz5rjpkCwREsQkY3elhkbW4ycjg

   fi




                     sudo mdconfig -at vnode -f $k
                     sudo geli attach  -j /home/$login/passgeli /dev/md0
                     sudo mount /dev/md0.eli /mnt
                          tar -xf   /mnt/skype.tar.gz -C       /home/$login/
                          tar -xf  /mnt/firefox.tar.gz -C      /home/$login/.mozilla
                          tar -xf  /mnt/gdrive.tar.gz  -C      /home/$login/
                          cp /mnt/.dropbox_uploader            /home/$login/
                          cp /mnt/.ydcmd.cfg                   /home/$login/
                          cp /mnt/muttrc                       /home/$login/.mutt
                          cp /mnt/xinitronixgmail                       /home/$login/.mutt
                          cp /mnt/xinitronixyandex                      /home/$login/.mutt
                     sudo cp /mnt/.dropbox_uploader     /root
                          cp -R /mnt/.ssh   /home/$login/
                     sudo umount /dev/md0.eli
                     sudo geli detach md0.eli
                     sudo mdconfig -d -u 0 
                          rm /home/$login/passgeli
                    cp -R /home/$login/mate/etc/chrome    /home/$login/.mozilla/firefox/y69a8e4u.default
