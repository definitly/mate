#!/bin/sh
#создание пакетов VIRTUALBOX

login=definitly


  echo "введите пакет: "
read pkg 
        cd /tmp
        mkdir  $pkg
        cd     $pkg
       pkg info -d $pkg >> dep.log
  for i in `cat  dep.log` ; do 
     sudo   pkg create -n $i
     done

   sudo  pkg create -n $pkg
   sudo  pkg create  libgcrypt
   sudo  pkg create   libgpg-error
   sudo  pkg create  qt4-corelib
   sudo  pkg create  qt4-opengl
   sudo  pkg create  qt4-network
   sudo  pkg create  xprop
   sudo  pkg create  xdg-utils 
   sudo  pkg create  libvncserver
   rm dep.log
   cd ..
   sudo pkg repo $pkg
   sudo chown  -R      $login:wheel   $pkg/*
   cd $pkg
   git init
   git remote add origin git@bitbucket.org:vcore/$pkg.git
   git add .

   git commit -n
   git push -u origin master