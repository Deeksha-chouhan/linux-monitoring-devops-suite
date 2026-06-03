# Linux Automation & Monitoring Suite

## Overview

A Bash-based Linux automation project that performs system health monitoring, log analysis, and backup automation.

## Features

* System health monitoring
* CPU, Memory, and Disk usage reporting
* Log monitoring and error detection
* Automated backup creation
* Consolidated execution using a master automation script
* Jenkins CI/CD integration
* Docker containerization

## Project Structure

```text
linux-automation-suite/
├── scripts/
│   ├── backup.sh
│   ├── log_monitor.sh
│   ├── system_monitor.sh
│   └── run_all.sh
├── backups/
├── reports/
├── logs/
├── Dockerfile
├── Jenkinsfile
└── README.md
```

## Technologies Used

* Linux
* Bash Scripting
* Git
* GitHub
* Docker
* Jenkins

## How to Run

```bash
chmod +x scripts/*.sh
./scripts/run_all.sh
```

## Future Enhancements

* Email alert notifications
* GitHub Actions integration
* Monitoring dashboard
* Slack notifications
# Test
