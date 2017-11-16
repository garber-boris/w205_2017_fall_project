DROP TABLE routes;

CREATE EXTERNAL TABLE routes
(
route_id string,
agency_id string,
route_short_name string,
route_long_name string,
route_desc string,
route_type string,
route_url string,
route_color string,
route_text_color string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ',',
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/project/routes'
;

DROP TABLE stops;

CREATE EXTERNAL TABLE stops
(
stop_id string,
stop_code string,
stop_name string,
stop_desc string,
stop_lat string,
stop_lon string,
zone_id string,
stop_url string,
location_type string,
parent_station string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ',',
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/project/stops'
;

DROP TABLE stop_times;

CREATE EXTERNAL TABLE stop_times
(
trip_id string,
arrival_time string,
departure_time string,
stop_id string,
stop_sequence string,
stop_headsign string,
pickup_type string,
drop_off_type string,
shape_dist_traveled string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ',',
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/project/stop_times'
;

DROP TABLE trips;

CREATE EXTERNAL TABLE trips
(
route_id string,
service_id string,
trip_id string,
trip_headsign string,
direction_id string,
block_id string,
shape_id string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ',',
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/project/trips'
;
