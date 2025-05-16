# Log Analyzer – System Error Statistics Tool

This Bash script analyzes a system log file and provides insights into errors.

## Features

- Counts total "error" entries.
- Identifies top 5 most common error sources.
- Lists the 10 most recent error messages.

## Requirements

- Works on any Unix-like system.
- Default log file: `/var/log/syslog`.

## Usage

1. Make executable:
```bash
chmod +x log_analyzer.sh
