#!/bin/bash

REPORT="reports/system_report.txt"

mkdir -p reports

echo "=====================================" > $REPORT
echo " Linux System Monitoring Report" >> $REPORT
echo " Generated: $(date)" >> $REPORT
echo "=====================================" >> $REPORT

echo "" >> $REPORT
echo "===== CPU Usage =====" >> $REPORT
top -bn1 | grep "Cpu" >> $REPORT

echo "" >> $REPORT
echo "===== Memory Usage =====" >> $REPORT
free -h >> $REPORT

echo "" >> $REPORT
echo "===== Disk Usage =====" >> $REPORT
df -h >> $REPORT

echo "" >> $REPORT
echo "===== Top 5 Memory Consuming Processes =====" >> $REPORT
ps aux --sort=-%mem | head -6 >> $REPORT

echo "" >> $REPORT
echo "===== Failed Login Attempts =====" >> $REPORT
grep "Failed password" /var/log/secure | tail -10 >> $REPORT

echo "" >> $REPORT
echo "===== Recent Errors =====" >> $REPORT
grep -iE "error|failed|critical|warning" /var/log/messages | tail -20 >> $REPORT

echo ""
echo "Report generated successfully"
