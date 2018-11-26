#!/bin/sh

cp 60-opalkelly.rules /etc/udev/rules.d/
/sbin/udevadm control --reload
dpkg -i libudev0_175-7.2_amd64.deb
cp bitfiles/originalIntanMain.bit source/main.bit
cp modified-lib-files/XEM6010/* source/
