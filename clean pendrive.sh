#!/bin/bash

lsblk -a --output NAME,SIZE,TYPE
W='\033[1;33m'
NC='\033[0m'
printf "Digite o caminho final da unidade ${W}/dev/...${NC} \n"
read sdb
umount /dev/$sdb
sudo  mkdosfs -F 32 -I /dev/$sdb
