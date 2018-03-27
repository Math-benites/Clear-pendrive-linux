#!/bin/bash
lsblk -a --output NAME,SIZE,TYPE
echo Digite o caminho final da unidade /dev/...
read sdb
umount /dev/$sdb
sudo  mkdosfs -F 32 -I /dev/$sdb

