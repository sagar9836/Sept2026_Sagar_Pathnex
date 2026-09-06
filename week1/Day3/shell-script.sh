# check-file.sh

#!/bin/bash

FILE="/tmp/pathnex.txt"

if [ -f "$FILE" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi