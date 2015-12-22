#/bin/bash

dpkg --force-depends -Ei /var/cache/apt/archives/*.deb
exit