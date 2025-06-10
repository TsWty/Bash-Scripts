#!/bin/bash

SERVICES=("ssh" "cron")

for service in "${SERVICES[@]}"; do
  if systemctl is-active --quiet "$service"; then
    echo "$service is running"
  else
    echo "$service is NOT running"
  fi
done
