#!/bin/bash
docker pull mariadb:latest
docker stop mariadb
docker rm mariadb
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d -t \
    -v /share/Public/Containers/hamariadb/etc:/etc/mysql/conf.d \
    -v /share/Public/Containers/hamariadb:/var/lib/mysql \
    --net qnet-static-eth0-e5ddec \
    --ip=192.168.0.8 \
    --hostname=mariadb \
    --name mariadb mariadb:latest mysqld
