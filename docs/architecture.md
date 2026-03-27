# Architecture Notes

## End-to-end pipeline

```text
Local .dat files
   -> HDFS raw directories
   -> Hive external raw tables
   -> Hive Parquet tables
   -> Hive aggregation table in /data/aggregations
   -> NiFi flow
   -> Kafka topic: aggregations
   -> Kafka consumer / downstream system
```

## Main analytical logic

The final aggregation filters for:
- non-stop routes
- destination airports above 5000 altitude
- inactive airlines

Then it groups the results by destination country.

## Engineering angle

This project demonstrates the difference between:
- storage layer: HDFS
- processing/modeling layer: Hive
- delivery/orchestration layer: NiFi
- messaging layer: Kafka
