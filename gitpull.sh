#!/bin/bash

cd /config
touch lastpull
git pull >> lastpull
