#!/usr/bin/env bash

USAGE=$(df -h / | tail -1 | awk '{print $5}')

echo "Disk Usage: $USAGE"
