#nullRecordsmetadata
/*
SELECT 
COUNT(*)-COUNT(latitude) As latColumn, COUNT(*)-COUNT(longitude) As longColumn, 
COUNT(*)-COUNT(date) As dateColumn, 
COUNT(*)-COUNT(longitude) As longColumn
FROM ua_participants; 
*/
CREATE VIEW nullrecords_metadata AS
SELECT 
'metadata' AS primarytable,
'internal_inc_id' AS primaryattribute,
sum(case WHEN incident_id IS NULL THEN 1 ELSE 0 END) AS nullrecords
FROM metadata;
