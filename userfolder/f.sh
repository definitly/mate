#!/usr/local/bin/bash
login=definitly
login2=ff







if [ -z "$1" ]
then
  echo "Значение не задано"
  echo "введите пароль"
  echo " пример: ./f.sh password"
  exit 1
fi

echo $1 > /home/$login/passgeli



MAC=`ifconfig -a | grep ether | awk '{print $2}'| sed s/://g | sed 's/.\{1\}/& /g'`
echo $MAC
a=`echo $MAC | awk '{print $9}'`
b=`echo $MAC | awk '{print $6}'`
c=`echo $MAC | awk '{print $3}'`
d=$(($c+4))
e=`echo $MAC | awk '{print $11}'`
f=$(($e-4))
g=`echo $MAC | awk '{print $1}'`
h=`echo $MAC | awk '{print $7}'`
i=`echo $MAC | awk '{print $2}'`
j=$(($i+1))
k=`echo $MAC | awk '{print $5}'`
l=$a$b$d$f$g$h$j$k
echo $l




a=`echo $MAC | awk '{print $1}'`
b=`echo $MAC | awk '{print $3}'`
a=`echo 1$a$b | awk '{ printf("%c", $0); }'`
c=`echo $MAC | awk '{print $6}'`
c=`echo 11$c  | awk '{ printf("%c", $0); }'`
d=`echo $MAC | awk '{print $12}'`
h=`echo $MAC | awk '{print $11}'`
i=`echo $MAC | awk '{print $11}'`
j=$(($i+1))
j=`echo $j$h  | awk '{ printf("%c", $0); }'`
g=`echo $MAC | awk '{print $5}'`
g=`echo 11$g | awk '{ printf("%c", $0); }'`
k=`echo $MAC | awk '{print $1}'`
k=`echo 1$k$k | awk '{ printf("%c", $0); }'`
k=$a$c$d$d$j$g$k
echo $k

sudo /home/$login/.scripts/rrdcreate.sh

  git clone https://github.com/definitly/timeinstall.git
  date >> ./timeinstall/time_install
  cp -R /pkg/mate .
  nspluginwrapper -a -i


./geli.sh &        



~/scripts/fftor.sh   & \
 # ~/scripts/rutorrent.sh &

git clone https://github.com/definitly/themes.git
tar -xpJf ~/themes/themes.txz  -C ~/themes
cp -R ~/themes/themes/* ~/.themes
cd themes 
./human.sh 



