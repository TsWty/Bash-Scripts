#!/bin/bash

# Threshold percentage for disk usage
THRESHOLD=90

# Get usage of the root filesystem (without the % sign)
USAGE=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "Warning: Disk usage is ${USAGE}% (threshold: ${THRESHOLD}%)"
else
  echo "Disk usage is ${USAGE}%"
fi
