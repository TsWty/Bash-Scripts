#!/bin/bash

# Log file path
AUTH_LOG="/var/log/auth.log"

# Threshold for failed attempts
THRESHOLD=5

# Time range (last 10 minutes)
TIME_FRAME=$(date --date='10 minutes ago' '+%b %e %H:%M')

# Get IPs with failed login attempts
IPS=$(grep "Failed password" $AUTH_LOG | awk -v time="$TIME_FRAME" '$0 > time' | awk '{print $(NF-3)}' | sort | uniq -c | awk -v threshold="$THRESHOLD" '$1 >= threshold {print $2}')

for IP in $IPS; do
    echo "Blocking IP: $IP"
    iptables -A INPUT -s $IP -j DROP
done
