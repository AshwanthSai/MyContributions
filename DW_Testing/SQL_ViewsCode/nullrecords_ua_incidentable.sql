#incident null records
CREATE VIEW nullrecords_ua_incidents AS 
SELECT 
'ua_incidents' AS primarytable,
'internal_inc_id' AS primaryattribute,
sum(case WHEN date_loaded IS NULL THEN 1 ELSE 0 END) AS dateColumn,
sum(case WHEN n_killed IS NULL THEN 1 ELSE 0 END) AS n_killed,
sum(case WHEN n_injured IS NULL THEN 1 ELSE 0 END) AS n_injured,
sum(case WHEN date IS NULL THEN 1 ELSE 0 END) AS date,
sum(case WHEN state IS NULL THEN 1 ELSE 0 END) AS state,
sum(case WHEN city_or_county IS NULL THEN 1 ELSE 0 END) AS city,
sum(case WHEN latitude IS NULL THEN 1 ELSE 0 END) AS latColumn,
sum(case WHEN longitude IS NULL THEN 1 ELSE 0 END) AS longColumn,
sum(case WHEN postcode IS NULL THEN 1 ELSE 0 END) AS postcode
FROM ua_incidents

