#!/bin/bash

THRESHOLD=90

USAGE=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "Warning: Disk usage is ${USAGE}% (threshold: ${THRESHOLD}%)"
else
  echo "Disk usage is ${USAGE}%"
fi
