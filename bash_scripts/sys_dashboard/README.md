# Terminal System Resource Dashboard

A live-updating terminal dashboard to monitor CPU, memory, disk usage, and top processes.

## Features

- Refreshes every 5 seconds.
- Shows CPU, RAM, and `/home` disk usage.
- Displays the top 3 CPU-consuming processes.
- Simple, clean CLI output.

## Requirements

- `top`, `awk`, `df`, `ps` (available on most Unix systems)

## Usage
1. Make the script executable:
```bash
chmod +x sys_dashboard.sh
./sys_dashboard.sh
```
Çıkmak için `CTRL+C` kullanın.
