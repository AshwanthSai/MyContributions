# Data Consistency deals with testing classifications against list of referential values
# Basically check distinct values of classifications, so it can be passed as reference. 
# Example, We classify over 200K incidents as High Intensity Zone in Heatmaps, our own reference.

CREATE VIEW DQ_CONSISTENCY AS
SELECT type, COUNT(internal_inc_id) as "Distinct Count"
FROM ua_participants 
GROUP BY type
UNION ALL 
SELECT status, COUNT(internal_inc_id) as "Distinct Count"
FROM ua_participants 
GROUP BY status

/*
SELECT status, COUNT(internal_inc_id) as "Distinct Count"
FROM ua_participants 
-- GROUP BY status
UNION ALL 
SELECT n_killed, COUNT(internal_inc_id) as "Distinct Count"
FROM ua_incidents 
GROUP BY n_killed
UNION ALL 
SELECT n_injured, COUNT(internal_inc_id) as "Distinct Count"
FROM ua_incidents 
GROUP BY n_injured
*/


