#!/bin/bash

cd /config
touch lastpull
date > lastpull
/usr/bin/git pull >> lastpull
