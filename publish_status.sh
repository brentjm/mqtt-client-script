#!/bin/sh
IP=$(ip -4 address show eth0 | grep inet | awk '{print $2}')
echo "$IP"
mosquitto_pub -h 192.168.1.2 -t "ape/3/ip" -m "$IP" -r
