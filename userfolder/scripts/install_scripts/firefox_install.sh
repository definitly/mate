#!/bin/sh

 cd /tmp
mkdir firefox
cd firefox

fetch https://gitlab.com/definitly/firefox/raw/master/alsa-lib-1.0.28.txz
fetch https://gitlab.com/definitly/firefox/raw/master/atk-2.14.0.txz 
fetch https://gitlab.com/definitly/firefox/raw/master/alsa-plugins-1.0.28.txz
fetch https://gitlab.com/definitly/firefox/raw/master/cairo-1.12.16_1,2.txz
fetch https://gitlab.com/definitly/firefox/raw/master/dbus-glib-0.100.2_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/desktop-file-utils-0.22_3.txz
fetch https://gitlab.com/definitly/firefox/raw/master/glib-2.42.0.txz
fetch https://gitlab.com/definitly/firefox/raw/master/graphite2-1.2.4.txz
fetch https://gitlab.com/definitly/firefox/raw/master/firefox-34.0.5,1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/gstreamer1-1.2.4.txz
fetch https://gitlab.com/definitly/firefox/raw/master/gstreamer1-libav-1.2.4_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/gstreamer1-plugins-1.2.4.txz
fetch https://gitlab.com/definitly/firefox/raw/master/gstreamer1-plugins-good-1.2.4_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/gtk2-2.24.25_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/harfbuzz-0.9.28.txz
fetch https://gitlab.com/definitly/firefox/raw/master/hunspell-1.3.3.txz
fetch https://gitlab.com/definitly/firefox/raw/master/icu-53.1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/iso-codes-3.56.txz
fetch https://gitlab.com/definitly/firefox/raw/master/jpeg-8_5.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libGL-9.1.7_4.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libXext-1.3.3,1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libXrender-0.9.8_2.txz

fetch https://gitlab.com/definitly/firefox/raw/master/libXt-1.1.4_2,1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libevent2-2.0.21_3.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libffi-3.0.13_3.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libv4l-0.8.8_2.txz
fetch https://gitlab.com/definitly/firefox/raw/master/linss-3.17.2_1.txzbvorbis-1.3.4_1,3.txz
fetch https://gitlab.com/definitly/firefox/raw/master/libvpx-1.3.0.txz
fetch https://gitlab.com/definitly/firefox/raw/master/nspr-4.10.7.txz
fetch https://gitlab.com/definitly/firefox/raw/master/nss-3.17.2_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/opus-1.1_1.txz
fetch https://gitlab.com/definitly/firefox/raw/master/pango-1.36.8.txz
fetch https://gitlab.com/definitly/firefox/raw/master/pcre-8.35_1.txz

fetch https://gitlab.com/definitly/firefox/raw/master/pixman-0.32.6.txz
fetch https://gitlab.com/definitly/firefox/raw/master/png-1.5.20.txz
fetch https://gitlab.com/definitly/firefox/raw/master/soundtouch-1.8.0_1.txz

fetch https://gitlab.com/definitly/firefox/raw/master/sqlite3-3.8.7.2.txz
fetch https://gitlab.com/definitly/firefox/raw/master/startup-notification-0.12_3.txz

sudo pkg add firefox-34.0.5,1.txz



