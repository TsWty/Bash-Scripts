#!/bin/bash

LOG_FILE="/var/log/syslog"
OUTPUT_FILE="error_stats_report.txt"

echo "log analysis report - $(date)" > "$OUTPUT_FILE"
echo "====================================" >> "$OUTPUT_FILE"

TOTAL_ERRORS=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "total error entries: $TOTAL_ERRORS" >> "$OUTPUT_FILE"

echo -e "\ntop 5 error sources:" >> "$OUTPUT_FILE"
grep -i "error" "$LOG_FILE" | awk '{print $5}' | sort | uniq -c | sort -nr | head -n 5 >> "$OUTPUT_FILE"

echo -e "\nmost recent 10 errors:" >> "$OUTPUT_FILE"
grep -i "error" "$LOG_FILE" | tail -n 10 >> "$OUTPUT_FILE"

echo "report saved to $OUTPUT_FILE"
