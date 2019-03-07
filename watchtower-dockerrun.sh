#!/bin/bash
docker pull v2tec/watchtower:latest
docker stop watchtower
docker rm watchtower
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker run -d \
  --name watchtower \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e WATCHTOWER_NOTIFICATIONS=slack \
  -e WATCHTOWER_NOTIFICATION_SLACK_HOOK_URL="https://hooks.slack.com/services/xxx/yyyyyyyyyyyyyyy" \
  v2tec/watchtower