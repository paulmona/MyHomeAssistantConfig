#!/bin/bash
docker pull homeassistant/home-assistant:latest
docker stop home-assistant
docker rm home-assistant
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/HomeAssistant:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth0-e5ddec \
    --ip=192.168.0.6 \
    --hostname=homeassistant \
    --name homeassistant homeassistant/home-assistant:latest python -m homeassistant --config /config --log-otate-days '3'
