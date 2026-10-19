#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Akbota"
echo "Surname: Zhanserikkyzy"
echo "Group: IT2-2308"
echo "Student ID: 37106"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System:"
uname -a
echo
echo "Disk Usage:"
df -h
echo
echo "Memory Usage:"
if command -v free >/dev/null 2>&1; then
    free -h
else
    vm_stat
fi
echo

if [ -f "$HOME/devops/zhanserikkyzy_akbota/Zhanserikkyzy_Akbota_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
