## Data Uniqueness 
## Checks the number of duplicates in each tables, if any. 
## Omited Participant Table, It is bound to have duplicates by design. 
## Ommited Characteristic Table, It is bound to have duplicates by design. 
## Introducting Hashing, causes failure of distinct items, when the rows sizes is huge, This was observed manually
## Census Data was Ommited, Bound to have duplicates. Example Arizona Population for 2020,2021
CREATE VIEW DQ_Uniqueness AS
SELECT 
	'ua_incidents' AS primarytable,
	'internal_inc_id' AS unique_constraint,
	count(internal_inc_id) AS count_records,
	count(DISTINCT(internal_inc_id)) AS count_distinct_records,
	count(internal_inc_id) - count(DISTINCT(internal_inc_id)) AS count_duplicates
FROM ua_incidents
UNION ALL 
	SELECT 
	'ua_counties_mapped' AS primarytable,
	'postcode' AS unique_constraint,
	count(postcode) AS count_records,
	count(DISTINCT(postcode)) AS count_distinct_records,
	count(postcode) - count(DISTINCT(postcode)) AS count_duplicates
FROM ua_counties_mapped
UNION ALL 
	SELECT 
	'metadata' AS primarytable,
	'internal_inc_id' AS unique_constraint,
	count(internal_inc_id) AS count_records,
	count(DISTINCT(internal_inc_id)) AS count_distinct_records,
	count(internal_inc_id) - count(DISTINCT(internal_inc_id)) AS count_duplicates
FROM metadata
