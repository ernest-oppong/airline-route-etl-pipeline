#!/usr/bin/env bash
set -euo pipefail

cd /home/bigdata/confluent

bin/kafka-console-consumer \
  --bootstrap-server localhost:9092 \
  --topic aggregations \
  --from-beginning
