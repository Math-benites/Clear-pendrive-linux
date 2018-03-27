#!/bin/bash
ifconfig re0 down
sleep 30
ifconfig re0 up
sleep 10
sudo service networking start
sudo service network-manager start
exit

