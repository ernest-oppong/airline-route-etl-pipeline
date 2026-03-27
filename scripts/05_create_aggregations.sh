#!/usr/bin/env bash
set -euo pipefail

hive -f sql/aggregations.hql
hdfs dfs -ls /data/aggregations
