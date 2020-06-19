#!/bin/sh
IP=$(ip -4 address show eth0 | grep inet | awk '{print $2}')
echo "$IP"
mosquitto_pub -h 10.131.72.83 -t "ape/7/ip" -m "$IP" -r
mosquitto_pub -h 10.131.72.83 -t "ape/7/location" -m "DPD" -r
DATE=$(date)
while true
do
    mosquitto_pub -h 10.131.72.83 -t "ape/7/status" -m "$DATE" -r
    sleep 1d
done
    
