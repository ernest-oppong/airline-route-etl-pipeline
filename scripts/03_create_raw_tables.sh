#!/usr/bin/env bash
set -euo pipefail

hive -f sql/raw_tables.hql
