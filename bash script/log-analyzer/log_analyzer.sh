#!/bin/bash

# default log file to analyze
LOG_FILE="/var/log/syslog"
# output file for the report
OUTPUT_FILE="error_stats_report.txt"

# write report header
echo "log analysis report - $(date)" > "$OUTPUT_FILE"
echo "====================================" >> "$OUTPUT_FILE"

# count total errors
TOTAL_ERRORS=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "total error entries: $TOTAL_ERRORS" >> "$OUTPUT_FILE"

# list top 5 sources of errors
echo -e "\ntop 5 error sources:" >> "$OUTPUT_FILE"
grep -i "error" "$LOG_FILE" | awk '{print $5}' | sort | uniq -c | sort -nr | head -n 5 >> "$OUTPUT_FILE"

# show 10 most recent errors
echo -e "\nmost recent 10 errors:" >> "$OUTPUT_FILE"
grep -i "error" "$LOG_FILE" | tail -n 10 >> "$OUTPUT_FILE"

echo "report saved to $OUTPUT_FILE"
