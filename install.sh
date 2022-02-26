#! /data/data/com.termux/files/usr/bin/bash

cd

apt update
apt install proot-distro
proot-distro install ubuntu
proot-distro login ubuntu 

apt update 
apt install --no-install-recommends mame-tools
chdman 
