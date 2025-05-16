# SSH Guard – Intrusion Prevention Script

This script monitors failed SSH login attempts and automatically blocks IPs that exceed a failed login threshold.

## Features

- Parses the `/var/log/auth.log` for failed login attempts.
- Automatically blocks suspicious IPs using `iptables`.
- Configurable time window and attempt threshold.

## Requirements

- Must be run as root or with sudo.
- Linux system with `iptables`.

## Usage

1. Make executable:
```bash
chmod +x ssh_guard.sh
