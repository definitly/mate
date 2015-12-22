dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl
echo  "vcore	ALL=(ALL:ALL) ALL" >> /etc/sudoers
useradd vcore   -p qwe123  --create-home --skel /etc/skel/
passwd -d vcore

echo "deb http://ru.archive.ubuntu.com/ubuntu/ quantal main restricted universe multiverse" > /etc/apt/sources.list