#!/usr/bin/env bash
set -euo pipefail

hive -f sql/parquet_tables.hql
