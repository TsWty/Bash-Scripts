#!/bin/bash

AUTH_LOG="/var/log/auth.log"

THRESHOLD=5

TIME_FRAME=$(date --date='10 minutes ago' '+%b %e %H:%M')

IPS=$(grep "Failed password" $AUTH_LOG | awk -v time="$TIME_FRAME" '$0 > time' | awk '{print $(NF-3)}' | sort | uniq -c | awk -v threshold="$THRESHOLD" '$1 >= threshold {print $2}')

for IP in $IPS; do
    echo "Blocking IP: $IP"
    iptables -A INPUT -s $IP -j DROP
done
