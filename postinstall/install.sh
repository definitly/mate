#!/bin/sh
login=definitly

sed -i "" "/ttyv0/s/autologin/Pc/"           /etc/ttys


#sed -i "" "s/.\/1//g"                        /root/.login
    

     
echo "# $login user autologin" >>             /etc/gettytab
echo "$login:\\" >> /etc/gettytab
echo ":al=$login:ht:np:sp#115200:" >>         /etc/gettytab

sed -i "" "/ttyv0/s/Pc/$login/"               /etc/ttys
