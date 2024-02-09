#!/bin/bash
xauth add :1 . ${XAUTH_TOKEN}
version=2023.3.4
cd /home/datagrip
if [ ! -d "DataGrip-${version}" ]; then
    curl https://download-cdn.jetbrains.com/datagrip/datagrip-${version}.tar.gz --output datagrip-${version}.tar.gz
    tar xzvf datagrip-${version}.tar.gz
fi
cd DataGrip-${version}
./bin/datagrip.sh