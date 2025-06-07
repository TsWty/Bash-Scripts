#!/bin/bash

# Ensure 'tput' is available for screen clearing
clear_screen() {
  tput reset
}

while true; do
  clear_screen
  echo "=== SYSTEM RESOURCE DASHBOARD ==="
  echo "Updated at: $(date '+%Y-%m-%d %H:%M:%S')"
  echo ""

  echo "--- CPU Usage ---"
  top -bn1 | grep "Cpu(s)" | awk '{printf "CPU Load: %.2f%%\n", 100 - $8}'

  echo "--- Memory Usage ---"
  free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB\n", $3, $2}'

  echo "--- Disk Usage (/home) ---"
  df -h /home | awk 'NR==2{print "Used: " $3 " / Total: " $2 " (" $5 " used)"}'

  echo "--- Top 3 Processes by CPU ---"
  ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 4

  echo ""
  echo "Press [CTRL+C] to exit."
  sleep 5
done
