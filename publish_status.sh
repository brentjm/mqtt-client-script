#!/bin/sh
mosquitto_pub -h 10.131.72.83 -t "ape/7/status" -m "up" -r --will-topic "ape/7/status" --will-payload "down" --will-retain
sleep infinity
