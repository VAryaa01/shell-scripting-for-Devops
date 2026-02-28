#!/bin/bash

THRESHOLD=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ $usage -gt $THRESHOLD ]; then
    echo "Disk usage is above threshold! Current usage: $usage%"
else
    echo "Disk usage is normal: $usage%"
fi
