#!/usr/bin/env bash
set -euo pipefail

# Stop NiFi if installed in the expected path
if [ -d "/home/bigdata/nifi-1.23.2" ]; then
  /home/bigdata/nifi-1.23.2/bin/nifi.sh stop || true
fi

# Stop Confluent services if the CLI is available
if command -v confluent >/dev/null 2>&1; then
  confluent local services stop || true
fi

# Stop HDFS
if [ -d "/home/bigdata/hadoop-3.3.6" ]; then
  /home/bigdata/hadoop-3.3.6/sbin/stop-dfs.sh || true
fi

echo "Services stopped."
