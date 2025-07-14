#!/bin/bash

PYPY_VERSION="pypy3.11-v7.3.20-aarch64"
SD_CARD_DIR="/mnt/sdcard/"

rm -r ${SD_CARD_DIR}pypy*
rm /usr/bin/python3

curl -s -L -o "${SD_CARD_DIR}${PYPY_VERSION}.tar.bz2" "https://downloads.python.org/pypy/${PYPY_VERSION}.tar.bz2"
bunzip2 -c ${SD_CARD_DIR}${PYPY_VERSION}.tar.bz2 | tar -xf - -C ${SD_CARD_DIR}
rm -rf ${SD_CARD_DIR}${PYPY_VERSION}.tar.bz2
ln -s ${SD_CARD_DIR}${PYPY_VERSION}/bin/python /usr/bin/python3