#! /data/data/com.termux/files/usr/bin/bash
#!/bin/bash

cd
nome=proot-distro

apt update

pacote=$(dpkg --get-selections | grep $nome )

if [ -n "$pacote" ] ;  
then echo;
     echo "$nome is already installed"; 
else echo;
     echo "$nome Is not installed"
     apt install $nome

proot-distro install ubuntu 
proot-distro login ubuntu -- apt update && apt full-upgrade && apt install mame-tools
