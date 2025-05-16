#!/bin/bash

# file to save the firewall rules
OUTPUT_FILE="firewall_rules_report.txt"

# write the report header
echo "firewall rules report - $(date)" > "$OUTPUT_FILE"
echo "===================================" >> "$OUTPUT_FILE"

# list ipv4 rules
echo -e "\nipv4 rules (iptables):" >> "$OUTPUT_FILE"
iptables -L -n -v >> "$OUTPUT_FILE"

# list ipv6 rules
echo -e "\nipv6 rules (ip6tables):" >> "$OUTPUT_FILE"
ip6tables -L -n -v >> "$OUTPUT_FILE"

# list nftables rules if available
if command -v nft &> /dev/null; then
    echo -e "\nnftables rules:" >> "$OUTPUT_FILE"
    nft list ruleset >> "$OUTPUT_FILE"
fi

echo "firewall rule summary saved to $OUTPUT_FILE"
