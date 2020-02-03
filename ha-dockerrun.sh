#!/bin/bash
docker pull homeassistant/home-assistant:latest
docker stop homeassistant
docker rm homeassistant
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/HomeAssistant:/config \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth1-08c327 \
    --ip=192.168.3.6 \
    --hostname=homeassistant \
    --restart=always \
    --name homeassistant homeassistant/home-assistant:latest python -m homeassistant --config /config --log-rotate-days '3'
