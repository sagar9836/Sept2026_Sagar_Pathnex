#!/bin/bash

FILE="/etc/passwd"

while read -r line; do
    echo "Line: $line"
done < "$FILE"