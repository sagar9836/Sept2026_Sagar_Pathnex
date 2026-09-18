#!/bin/bash

set -euo pipefail

backup_dir="/backup"
archive_path="$backup_dir/pathnex-logs-$(date +%F).tar.gz"

mkdir -p "$backup_dir"
tar -czf "$archive_path" /var/log/
echo "Logs archived: $archive_path"
