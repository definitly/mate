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
     doas   pkg create -n $i
     done

   doas  pkg create -n $pkg
   doas  pkg create  libgcrypt
   doas  pkg create   libgpg-error
   doas  pkg create  qt4-corelib
   doas  pkg create  qt4-opengl
   doas  pkg create  qt4-network
   doas  pkg create  xprop
   doas  pkg create  xdg-utils 
   doas  pkg create  libvncserver
   rm dep.log
   cd ..
   doas pkg repo $pkg
   doas chown  -R      $login:wheel   $pkg/*
   cd $pkg
   git init
   git remote add origin git@bitbucket.org:vcore/$pkg.git
   git add .

   git commit -n
   git push -u origin master