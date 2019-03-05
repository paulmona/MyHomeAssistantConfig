#!/bin/bash

cd /share/Public/Containers/HomeAssistant
touch /share/Public/Containers/HomeAssistant/lastpull
date > /share/Public/Containers/HomeAssistant/lastpull
/usr/bin/git pull >> /share/Public/Containers/HomeAssistant/lastpull
/share/CACHEDEV1_DATA/.qpkg/container-station/bin/docker restart home-assistant
