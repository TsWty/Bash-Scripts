#!/bin/bash

# Report file
REPORT_FILE="$HOME/system_audit_report.txt"
NOW=$(date "+%Y-%m-%d %H:%M:%S")

echo "System Audit Report - $NOW" > "$REPORT_FILE"
echo "======================================" >> "$REPORT_FILE"

# Uptime
echo -e "\nSystem Uptime:" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"

# Logged in users
echo -e "\nLogged In Users:" >> "$REPORT_FILE"
who >> "$REPORT_FILE"

# Disk usage
echo -e "\nDisk Usage:" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

# Memory usage
echo -e "\nMemory Usage:" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

# Top 5 CPU-consuming processes
echo -e "\nTop 5 CPU-consuming Processes:" >> "$REPORT_FILE"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 >> "$REPORT_FILE"

# Open ports
echo -e "\nOpen Ports:" >> "$REPORT_FILE"
ss -tuln >> "$REPORT_FILE"

# Sudoers file content
echo -e "\nSudoers File Content (/etc/sudoers):" >> "$REPORT_FILE"
sudo cat /etc/sudoers >> "$REPORT_FILE" 2>/dev/null || echo "Permission denied or sudoers not readable." >> "$REPORT_FILE"

echo -e "\nAudit Complete. Report saved to: $REPORT_FILE"
