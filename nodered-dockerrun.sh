#!/bin/bash
docker pull nodered/node-red-docker:v8
docker stop node-red
docker rm node-red
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/node-red:/data \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth0-e5ddec \
    --ip=192.168.0.5 \
    --hostname=node-red \
    --restart=always \
     -e TZ=America/Toronto
    --name node-red nodered/node-red-docker:v8 npm start -- --userDir /data
