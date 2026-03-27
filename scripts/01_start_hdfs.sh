#!/usr/bin/env bash
set -euo pipefail

cd /home/bigdata/hadoop-3.3.6
sbin/start-dfs.sh

echo "HDFS started."
