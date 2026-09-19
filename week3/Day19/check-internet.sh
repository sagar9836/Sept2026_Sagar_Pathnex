#!/usr/bin/env bash

if ping -c 2 google.com > /dev/null 2>&1; then
  echo "Internet is available"
else
  echo "No internet connection"
fi
