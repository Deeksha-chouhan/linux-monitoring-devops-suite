#!/bin/bash

echo "Starting Automation..."

bash scripts/system_monitor.sh

bash scripts/backup.sh

echo "Automation Completed"
