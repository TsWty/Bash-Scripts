#!/bin/bash

OUTPUT_FILE="firewall_rules_report.txt"

echo "firewall rules report - $(date)" > "$OUTPUT_FILE"
echo "===================================" >> "$OUTPUT_FILE"

echo -e "\nipv4 rules (iptables):" >> "$OUTPUT_FILE"
iptables -L -n -v >> "$OUTPUT_FILE"

echo -e "\nipv6 rules (ip6tables):" >> "$OUTPUT_FILE"
ip6tables -L -n -v >> "$OUTPUT_FILE"

if command -v nft &> /dev/null; then
    echo -e "\nnftables rules:" >> "$OUTPUT_FILE"
    nft list ruleset >> "$OUTPUT_FILE"
fi

echo "firewall rule summary saved to $OUTPUT_FILE"
