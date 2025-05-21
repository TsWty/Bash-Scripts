# System Audit Reporter

This script performs a comprehensive system audit, collecting various security and performance data into a structured report.

## Features

- Logs uptime, users, memory/disk usage, and CPU load.
- Lists the most CPU-heavy processes.
- Displays open network ports.
- Includes contents of the sudoers file for access auditing.

## Requirements

- Linux system with Bash.
- `sudo` access for viewing `/etc/sudoers`.

## Usage

1. Make executable:
```bash
chmod +x system_audit.sh
Run the script:
./system_audit.sh