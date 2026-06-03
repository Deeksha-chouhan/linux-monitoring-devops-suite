#!/bin/bash

LOGFILE="/var/log/syslog"

echo "Log Monitoring Report" > reports/log_report.txt
echo "Generated on $(date)" >> reports/log_report.txt

grep -i "error" $LOGFILE >> reports/log_report.txt

echo "Report Generated Successfully"
