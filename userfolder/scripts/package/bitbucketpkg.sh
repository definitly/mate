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
     daos   pkg create -n $i
     done

   daos  pkg create -n $pkg
   daos  pkg create  libgcrypt
   daos  pkg create   libgpg-error
   daos  pkg create  qt4-corelib
   daos  pkg create  qt4-opengl
   daos  pkg create  qt4-network
   daos  pkg create  xprop
   daos  pkg create  xdg-utils 
   daos  pkg create  libvncserver
   rm dep.log
   cd ..
   daos pkg repo $pkg
   daos chown  -R      $login:wheel   $pkg/*
   cd $pkg
   git init
   git remote add origin git@bitbucket.org:vcore/$pkg.git
   git add .

   git commit -n
   git push -u origin master