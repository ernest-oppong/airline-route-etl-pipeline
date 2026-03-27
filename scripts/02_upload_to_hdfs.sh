#!/usr/bin/env bash
set -euo pipefail

LOCAL_DATA_DIR="/home/bigdata/Descargas/data"

hdfs dfs -mkdir -p /data/raw/airlines
hdfs dfs -mkdir -p /data/raw/airports
hdfs dfs -mkdir -p /data/raw/routes

hdfs dfs -put -f "$LOCAL_DATA_DIR/airlines.dat" /data/raw/airlines/
hdfs dfs -put -f "$LOCAL_DATA_DIR/airports.dat" /data/raw/airports/
hdfs dfs -put -f "$LOCAL_DATA_DIR/routes.dat" /data/raw/routes/

echo "Files uploaded to HDFS."
hdfs dfs -ls -R /data/raw
