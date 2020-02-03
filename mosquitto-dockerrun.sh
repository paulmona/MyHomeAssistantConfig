#!/bin/bash
docker pull eclipse-mosquitto:latest
docker stop mosquitto
docker rm mosquitto
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/mosquitto/data:/mosquitto/data \
    -v /share/Public/Containers/mosquitto/logs:/mosquitto/logs \
    -v /share/Public/Containers/mosquitto/config:/mosquitto/config \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth1-08c327 \
    --ip=192.168.3.7 \
    --hostname=mosquitto \
    --restart=always \
    --name mosquitto eclipse-mosquitto:latest /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf

