#!/bin/bash
docker pull nodered/node-red
docker stop node-red
docker rm node-red
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/node-red:/data \
    -v /etc/localtime:/etc/localtime:ro \
    --net qnet-static-eth1-08c327 \
    --ip=192.168.3.5 \
    --hostname=node-red \
    --restart=always \
     -e TZ=America/Toronto \
    --name node-red nodered/node-red npm start -- --userDir /data
