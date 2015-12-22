dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl
locale-gen en_US.UTF-8
locale-gen ru_RU.KOI8-R
dpkg-reconfigure locales
echo  " vcore	ALL=(ALL:ALL) ALL" >> /etc/sudoers
useradd vcore   -p qwe123  --create-home --skel /etc/skel/
passwd -d vcore

