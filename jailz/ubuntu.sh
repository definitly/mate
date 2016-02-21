dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl
chown -R man:root /var/cache/man
apt-get update && apt-get -y upgrade
apt-get -y install libx11-6  libxext6 libXtst6 libXfixes3 libXrandr2 libgtk2.0-0  libopenal1 libnm-glib4  libusb-1.0-0  libsm6 libasound2 libgconf2-4 dbus libsndfile1 \
 libnss3 libdbus-glib-1-2 libstdc++5 libcurl3 libxt6 libcrystalhd3  libjson0  libspeexdsp1   \
libXv1 libXss1  libxxf86vm1  libx11-xcb1




/bin/dbus-uuidgen --ensure
ln -s  /var/lib/dbus/machine-id  /etc/machine-id
locale-gen en_US.UTF-8
locale-gen ru_RU.UTF-8
dpkg-reconfigure locales
echo  " vcore	ALL=(ALL:ALL) ALL" >> /etc/sudoers
useradd -u 1002 vcore   -p qwe123  --create-home --skel /etc/skel/
passwd -d vcore

