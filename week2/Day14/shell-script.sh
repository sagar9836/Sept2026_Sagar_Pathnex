#!/bin/bash

echo "======= CPU =========="
top -bn1 | grep "Cpu(s)"

echo "======== Memory ========="
free -h

echo "======== Disk ========"
df -h