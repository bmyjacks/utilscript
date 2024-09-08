#!/bin/sh

sudo docker run \
    -d \
    --name influxdb2 \
    -p 8086:8086 \
    --mount type=volume,source=influxdb2-data,target=/var/lib/influxdb2 \
    --mount type=volume,source=influxdb2-config,target=/etc/influxdb2 \
    influxdb:2
