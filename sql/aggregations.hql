-- Final analytical aggregation

DROP TABLE IF EXISTS aggregations_parquet;

CREATE TABLE aggregations_parquet
STORED AS PARQUET
LOCATION '/data/aggregations'
AS
SELECT
    ap.country AS destination_country,
    COUNT(*) AS total_routes
FROM routes_parquet r
JOIN airports_parquet ap
    ON r.dest_airport_id = ap.airport_id
JOIN airlines_parquet al
    ON r.airline_id = al.airline_id
WHERE r.stops = 0
  AND ap.altitude > 5000
  AND al.active = 'N'
GROUP BY ap.country
ORDER BY total_routes DESC;
