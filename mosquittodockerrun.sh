#!/bin/bash
docker pull eclipse-mosquitto:latest
docker stop mosquitto
docker rm mosquitto
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/mosquitto/data:/mosquitto/data \
    -v /share/Public/Containers/mosquitto/logs:/mosquitto/logs \
    -v /share/Public/Containers/mosquitto/config:/mosquitto/config \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth0-e5ddec \
    --ip=192.168.0.7 \
    --hostname=mosquitto \
    --name mosquitto mosquitto:latest /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf
