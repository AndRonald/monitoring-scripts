#!/bin/bash

echo "==== Server Performance Stats ===="

echo ""
echo ">>> system uptime: "
uptime -p

echo ""
echo ">>> uptime in seconds: "
cat /proc/uptime | awk '{print int($1) " seconds"}'

echo""
echo ">>> load average (1, 5, 15 minutes): "
uptime | awk -F'load average: ' '{print $2}'

echo ""
echo ">>> operating system: "
grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'

echo ""
echo ">>> logged in users: "
who

echo ""
echo ">>> failed login attempts: "
sudo lastb | head -n 10

echo ""
echo ">>> total cpu usage: "
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "% cpu usage"}'

echo ""
echo ">>> total memory usage: "
free -m | grep "Mem" | awk '{print "Memory used: " $3 "MB / TOTAL: " $2 "MB" }'

echo ""
echo ">>> total disk usage: "
df -h / | grep "/" | awk '{print "disk used: " $3 " / " $2 " (" $5 " used)"}'

echo ""
echo ">>> top 5 processes by cpu usage: "
ps aux --sort=%cpu | head -n 6 | tail -n 5

echo ""
echo ">>> top 5 processes by memory usage: "
ps aux --sort=%mem | head -n 6 | tail -n 5
