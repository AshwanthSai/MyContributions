
CREATE VIEW nullrecords_ua_participants AS
SELECT 
'ua_participants' AS primarytable,
'internal_inc_id' AS primaryattribute,
sum(case WHEN age IS NULL THEN 1 ELSE 0 END) AS age,
sum(case WHEN age_group IS NULL THEN 1 ELSE 0 END) AS age_group,
sum(case WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender,
sum(case WHEN status IS NULL THEN 1 ELSE 0 END) AS status,
sum(case WHEN type IS NULL THEN 1 ELSE 0 END) AS type,
sum(case WHEN date_loaded IS NULL THEN 1 ELSE 0 END) AS dateColumn,
sum(case WHEN date IS NULL THEN 1 ELSE 0 END) AS date,
sum(case WHEN state IS NULL THEN 1 ELSE 0 END) AS state,
sum(case WHEN city_or_county IS NULL THEN 1 ELSE 0 END) AS city,
sum(case WHEN latitude IS NULL THEN 1 ELSE 0 END) AS latColumn,
sum(case WHEN longitude IS NULL THEN 1 ELSE 0 END) AS longColumn,
sum(case WHEN postcode IS NULL THEN 1 ELSE 0 END) AS postcode
FROM ua_participants
