#!/bin/bash

cd /config
touch lastpull
date > lastpull
/usr/bin/git pull >> lastpull
/usr/bin/hassio homeassistant restart
