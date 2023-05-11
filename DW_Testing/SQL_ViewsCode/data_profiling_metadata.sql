#Data Profiling - Helps understanding the type of data in each table
#We will profile the count in each table and also the type of profiling information in each schema. 

CREATE VIEW data_profiling_metadata AS
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'ua_incidents'
UNION ALL 
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'ua_participants'
UNION ALL 
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'ua_counties_mapped'
UNION ALL 
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'ua_characteristics'
UNION ALL
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'metadata'
UNION ALL
SELECT * 
FROM information_schema.columns 
WHERE table_schema = 'auto_schema2' AND
table_name = 'census data'