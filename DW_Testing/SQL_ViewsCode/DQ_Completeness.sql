## Completness, Checks for null values within tables, focuses on only primary keys.
CREATE VIEW DQ_Completeness AS
SELECT 
	'ua_incide' AS primarytable,
	'internal_inc_id' AS nullValueAttribute,
	sum(case WHEN "internal_inc_id" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM ua_incidents
UNION ALL 
SELECT 
	'ua_participants',
	'internal_inc_id' AS nullValueCount,
	sum(case WHEN "internal_inc_id" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM ua_participants
UNION ALL 
SELECT 
	'ua_counties_mapped',
	'postcode' AS nullValueCount,
	sum(case WHEN "postcode" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM ua_counties_mapped
UNION ALL 
SELECT 
	'ua_characteristics',
	'internal_inc_id' AS nullValueCount,
	sum(case WHEN "internal_inc_id" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM ua_characteristics
UNION ALL 
SELECT 
	'metadata',
	'internal_inc_id' AS nullValueCount,
	sum(case WHEN "internal_inc_id" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM metadata
UNION ALL 
SELECT 
	'census_data',
	'state' AS nullValueCount,
	sum(case WHEN "state" IS NULL THEN 1 ELSE 0 END) AS count_null_records
FROM census_data
