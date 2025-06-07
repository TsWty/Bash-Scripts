# Concurrent Port Scanner

This Bash script scans a range of ports on a given host using concurrent jobs for faster execution.

## Features

- Scans TCP ports 1 to 1024 (customizable).
- Runs scans in parallel for speed.
- Measures total scan time.

## Requirements

- `bash`
- `/dev/tcp` support (bash feature)
- `xargs` for concurrent execution

## Usage
```bash
chmod +x port_scanner.sh
./port_scanner.sh 192.168.1.1
```
Hedef IP verilmezse `127.0.0.1` kullanılır.
