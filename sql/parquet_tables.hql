-- Curated Parquet tables for analytical processing

CREATE TABLE IF NOT EXISTS airports_parquet
STORED AS PARQUET
AS
SELECT *
FROM airports_raw;

CREATE TABLE IF NOT EXISTS airlines_parquet
STORED AS PARQUET
AS
SELECT *
FROM airlines_raw;

CREATE TABLE IF NOT EXISTS routes_parquet
STORED AS PARQUET
AS
SELECT *
FROM routes_raw;
