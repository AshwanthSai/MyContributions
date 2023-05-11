# Validity of data is concerned with Data integrity after transformation.
# For example, is the loaded date < the actual incident date ?
CREATE VIEW DQ_Validity AS
SELECT 
	'ua_participants' AS primaryTable,
	'date_loaded > incDate' AS validity_constraint,
	'>' AS validity_rule,
	sum(case WHEN "date_loaded" > "date" THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN "date_loaded" < "date" THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_participants
UNION ALL 
SELECT 
	'age' AS primaryTable,
	'age > 0' AS validity_constraint,
	'>' AS validity_rule,
	sum(case WHEN "age" > "0" THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN "age" < "0" THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_participants
UNION ALL 
SELECT 
	'ua_incidents' AS primaryTable,
	'date_loaded > incDate' AS validity_constraint,
	'>' AS validity_rule,
	sum(case WHEN "date_loaded" > "date" THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN "date_loaded" < "date" THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_incidents
UNION ALL 
	SELECT 
	'ua_incidents' AS primaryTable,
	'Postive Deaths' AS validity_constraint,
	'> 0' AS validity_rule,
	sum(case WHEN "n_killed" > 0 THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN "n_killed" < 0 THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_incidents
UNION ALL 
	SELECT 
	'ua_incidents' AS primaryTable,
	'Postive Injuries' AS validity_constraint,
	'> 0' AS validity_rule,
	sum(case WHEN "n_injured" > 0 THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN "n_injured" < 0 THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_incidents
UNION ALL 
SELECT 
	'ua_counties_mapped' AS primaryTable,
	'Postcode Range' AS validity_constraint,
	'Max 5 digits' AS validity_rule,
	sum(case WHEN CHAR_LENGTH(postcode) <= 5 THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN CHAR_LENGTH(postcode) >  5 THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_counties_mapped
UNION ALL 
SELECT 
	'census_data' AS primaryTable,
	'year' AS validity_constraint,
	'Has to be present' AS validity_rule,
	sum(case WHEN year < year(curdate()) THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN year > year(curdate()) THEN 1 ELSE 0 END) AS count_invalid_records
	FROM census_data
UNION ALL 
SELECT 
	'census_data' AS primaryTable,
	'population' AS validity_constraint,
	'Not Negative' AS validity_rule,
	sum(case WHEN population > 0 THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN population < 0  THEN 1 ELSE 0 END) AS count_invalid_records
	FROM census_data
UNION ALL 
SELECT 
	'ua_characteristics' AS primaryTable,
	'characteristic' AS validity_constraint,
	'Not Null' AS validity_rule,
	sum(case WHEN characteristic != null THEN 1 ELSE 0 END) AS count_valid_records,
	sum(case WHEN characteristic = null THEN 1 ELSE 0 END) AS count_invalid_records
	FROM ua_characteristics