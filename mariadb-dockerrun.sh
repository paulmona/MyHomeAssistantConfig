#!/bin/bash
docker pull mariadb:latest
docker stop mariadb
docker rm mariadb
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/hamariadb/etc:/etc/mysql/conf.d \
    -v /share/Public/Containers/hamariadb:/var/lib/mysql \
    --net qqnet-static-eth1-08c327 \
    --ip=192.168.3.8 \
    --hostname=mariadb \
    --restart=always \
    --name mariadb mariadb:latest mysqld
