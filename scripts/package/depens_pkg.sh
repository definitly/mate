#!/bin/sh

echo "введите пакет: "
read pkg

 

 mkdir $pkg
 cd $pkg
  pkg info -d $pkg >> dep.log

  
 for i in `cat  dep.log` ; do 
       pkg create -n $i
     done
  pkg create -n $pkg
rm dep.log
  cd ..
 tar -zcvf $pkg.tar.gz $pkg