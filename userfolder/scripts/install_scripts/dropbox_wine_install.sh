#!/bin/sh

wget      --no-check-certificate  https://www.cubby.com/pl/Dropbox.tar.gz/_ac3abd29377a410d8306c9fde57432ec

mv _ac3abd29377a410d8306c9fde57432ec dropbox.tar.gz

tar -zxvf dropbox.tar.gz
rm dropbox.tar.gz
cd Dropbox/bin

wine Dropbox.exe