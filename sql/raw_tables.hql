-- Raw external tables on top of HDFS text files

CREATE EXTERNAL TABLE IF NOT EXISTS airports_raw (
    airport_id INT,
    name STRING,
    city STRING,
    country STRING,
    iata STRING,
    icao STRING,
    latitude DOUBLE,
    longitude DOUBLE,
    altitude INT,
    timezone DOUBLE,
    dst STRING,
    tzdb STRING,
    type STRING,
    source STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar"     = '"',
    "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/data/raw/airports';

CREATE EXTERNAL TABLE IF NOT EXISTS airlines_raw (
    airline_id INT,
    name STRING,
    alias STRING,
    iata STRING,
    icao STRING,
    callsign STRING,
    country STRING,
    active STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar"     = '"',
    "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/data/raw/airlines';

CREATE EXTERNAL TABLE IF NOT EXISTS routes_raw (
    airline STRING,
    airline_id INT,
    src_airport STRING,
    src_airport_id INT,
    dest_airport STRING,
    dest_airport_id INT,
    codeshare STRING,
    stops INT,
    equipment STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    "separatorChar" = ",",
    "quoteChar"     = '"',
    "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/data/raw/routes';
